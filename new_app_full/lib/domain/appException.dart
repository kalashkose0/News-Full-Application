class AppException implements Exception {
  final String errormsg;
  AppException({required this.errormsg});

  @override
  String toString() {
    return errormsg;
  }

  String toErrormsg() {
    return toString();
  }
}

class FetchDataException extends AppException {
  FetchDataException({required String errormsg}) : super(errormsg: errormsg);
}

class BadRequestException extends AppException {
  BadRequestException({required String errormsg}) : super(errormsg: errormsg);
}

class UnauthorizedException extends AppException {
  UnauthorizedException({required String errormsg}) : super(errormsg: errormsg);
}

class InvalidInputException extends AppException {
  InvalidInputException({required String errormsg}) : super(errormsg: errormsg);
}
