import 'package:dio/dio.dart';

abstract class Failure {}

class ServiceFailure extends Failure {
  final String errorMsg;
  ServiceFailure(this.errorMsg);

  factory ServiceFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServiceFailure("connection is Timeout");
      case DioExceptionType.sendTimeout:
        return ServiceFailure("send is Timeout");
      case DioExceptionType.receiveTimeout:
        return ServiceFailure("receive is Timeout");
      case DioExceptionType.badCertificate:
        return ServiceFailure("bad Certificate");
      case DioExceptionType.badResponse:
        return ServiceFailure("bad Response");
      case DioExceptionType.cancel:
        return ServiceFailure("cancel");
      case DioExceptionType.connectionError:
        return ServiceFailure.fromConnection(
            error.response!.statusCode!, error.message);
      case DioExceptionType.unknown:
        if (error.message!.contains("SocketException")) {
          return ServiceFailure("No Internet Connection");
        } else {
          return ServiceFailure("Unexpected Error");
        }
    }
  }

  factory ServiceFailure.fromConnection(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServiceFailure(response["error"]["message"]);
    } else if (statusCode == 404) {
      return ServiceFailure("User Request Not Found");
    } else if (statusCode == 500) {
      return ServiceFailure("Internal Server Failure");
    } else {
      return ServiceFailure("There was an Error, Please try again");
    }
  }
}
