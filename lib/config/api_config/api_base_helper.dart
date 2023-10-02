import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:task_project/config/api_config/app_exception.dart';
import 'package:task_project/core/api/status_code.dart';
class ApiBaseHelper{

  ApiBaseHelper._internal();
  static final ApiBaseHelper _instance = ApiBaseHelper._internal();
  factory ApiBaseHelper() => _instance;

  Future<dynamic> get ({required String url ,required  Map<String,String> header})async {
    var responseJson;
    try{
      var uri = Uri.parse(url);
      final response = await http.get(uri,headers: header);
      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection!');
    }
    return responseJson;
  }

  Future<dynamic> post({required String url , required Map<String,String> header,required Map<String,String> body})async{
    var responseJson;
    try{
      var uri  = Uri.parse(url);
      final response = await http.post(uri,headers:header,body: body);
      responseJson = _returnResponse(response);
    }on SocketException {
      throw FetchDataException('No Internet Connection!');
    }
    return responseJson;
  }


  Future<dynamic> postWithFile({
    required String url,
    required Map<String, String> header,
    required Map<String, String> body,
    required http.MultipartFile file,
  }) async {
    var responseJson;
    try {
      var uri = Uri.parse(url);
      var request = http.MultipartRequest('POST', uri);

      request.files.add(file);
      request.headers.addAll(header);
      request.fields.addAll(body);

      final streamedResponse = await request.send();
      final response = await http.Response.fromStream(streamedResponse);


      responseJson = _returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection!!');
    }
    return responseJson;
  }


  Future<dynamic> put({required String url , required Map<String,String> body,required Map<String,String> header})async{
    var responseJosn;
    try{
      var uri = Uri.parse(url);
      final response =await  http.put(uri,body: body,headers: header);
      responseJosn = _returnResponse(response);
    }on SocketException {
      throw FetchDataException('No Internet Connection!!');
    }
    return responseJosn;
  }

  Future<dynamic> delete({required String url, required Map<String,String> header})async{
    var responseJson;
    try{
      var uri = Uri.parse(url);
      final response = await http.delete(uri,headers: header);
      responseJson = _returnResponse(response);
    }on SocketException {
     throw throw FetchDataException('No Internet Connection!');
    }
    return responseJson;
  }

  dynamic _returnResponse(http.Response response){
    var responseJson = jsonDecode(response.body);
    switch(response.statusCode){
      case StatusCode.ok:
      case StatusCode.created:
        return responseJson;
      case StatusCode.badRequest:
        throw BadRequestException(responseJson['message']);
      case StatusCode.unAuthenticated:
      case StatusCode.forBidden:
      throw UnauthorisedException(responseJson['message']);
      case StatusCode.notFound:
        throw NotFoundException(responseJson['message']);
      case StatusCode.serverError:
        throw ServerErrorException("Something Went Wrong, try again!");
      default:
       throw FetchDataException('No Internet Connection!');

    }
  }



}