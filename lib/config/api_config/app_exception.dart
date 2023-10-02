class AppException implements Exception {
  final dynamic _message;



  AppException([this._message]);

  @override
  String toString() {
    return "$_message";
  }
}

class FetchDataException extends AppException{

  FetchDataException([message]):super(message);
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message);
}

class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message);
}

class InvalidInputException extends AppException {
  InvalidInputException([message]) : super(message);
}

class NotFoundException extends AppException {
  NotFoundException([message]) : super(message);
}

class ServerErrorException extends AppException {
  ServerErrorException([message]) : super(message);
}

