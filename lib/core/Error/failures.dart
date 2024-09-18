import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMassage;

  const Failure(this.errorMassage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMassage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ., please try again !');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ., please try again !');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ., please try again !');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with ., please try again !');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Connection timeout with ApiService !');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiService !');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
        return ServerFailure('unexpected error , please try again!');
      default:
        return ServerFailure('Opps There was an error,please try later !');
    }
  }
  factory ServerFailure.fromResponse(int stateCode, dynamic response) {
    if (stateCode == 400 || stateCode == 401 || stateCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (stateCode == 404) {
      return ServerFailure('Your request not found,please try later !');
    } else if (stateCode == 500) {
      return ServerFailure('Internal server error,please try later !');
    } else {
      return ServerFailure('Opps There was an error,please try later !');
    }
  }
}
