import 'dart:io';

class EndPoints {
  static const String baseUrl = 'https://houses.alqeeq.net/api/v1/';
  static const String register = '${baseUrl}register';
  static const String login = '${baseUrl}login';
  static const String verifyOtp = '${baseUrl}verify-otp';


  final Map<String, String> header = {
    "Accept": "application/json",
    "lang":"ar"
  };
  // final Map<String, String> headerWithToken = {
  //   "Accept": "application/json",
  //   "lang":"ar",
  //   HttpHeaders.authorizationHeader:SharedPrefController().getString(UserKey.token.toString())
  // };



}
