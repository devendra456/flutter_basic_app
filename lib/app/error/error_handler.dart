import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'failure.dart';

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unAuthorised,
  notFound,
  internalServerError,
  connectionTimeOut,
  cancel,
  receiveTimeOut,
  sendTimeOut,
  cacheError,
  noInternetConnection,
  badCertificate,
  badResponse,
  connectionError,
  unknown,
  default_
}

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is DioException) {
      failure = _handleError(error);
      if (kDebugMode) {
        print("""${error.stackTrace}}""");
      }
    } else {
      failure = DataSource.default_.getFailure();
      if (kDebugMode) {
        print(error);
      }
    }
  }

  Failure _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.sendTimeout:
        return DataSource.sendTimeOut.getFailure();
      case DioExceptionType.receiveTimeout:
        return DataSource.receiveTimeOut.getFailure();
      case DioExceptionType.cancel:
        return DataSource.cancel.getFailure();
      case DioExceptionType.connectionTimeout:
        return DataSource.connectionTimeOut.getFailure();
      case DioExceptionType.badCertificate:
        return DataSource.badCertificate.getFailure();
      case DioExceptionType.badResponse:
        final code = error.response?.statusCode;
        switch (code) {
          case ResponseCode.internalServerError:
            return DataSource.internalServerError.getFailure();
          case ResponseCode.badRequest:
            return DataSource.badRequest.getFailure();
          case ResponseCode.unknown:
            return DataSource.unknown.getFailure();
          case ResponseCode.badCertificate:
            return DataSource.badCertificate.getFailure();
          case ResponseCode.notFound:
            return DataSource.notFound.getFailure();
          case ResponseCode.unAuthorised:
            return DataSource.unAuthorised.getFailure();
          case ResponseCode.forbidden:
            return DataSource.forbidden.getFailure();
          case ResponseCode.noContent:
            return DataSource.noContent.getFailure();
          case ResponseCode.success:
            return DataSource.success.getFailure();
          default:
            return DataSource.default_.getFailure();
        }
      case DioExceptionType.connectionError:
        return DataSource.connectionError.getFailure();
      case DioExceptionType.unknown:
        return DataSource.unknown.getFailure();
    }
  }
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.badRequest:
        return Failure(
          code: ResponseCode.badRequest,
          message: ResponseMessage.badRequest,
        );
      case DataSource.forbidden:
        return Failure(
          code: ResponseCode.forbidden,
          message: ResponseMessage.forbidden,
        );
      case DataSource.unAuthorised:
        return Failure(
          code: ResponseCode.unAuthorised,
          message: ResponseMessage.unAuthorised,
        );
      case DataSource.notFound:
        return Failure(
          code: ResponseCode.notFound,
          message: ResponseMessage.notFound,
        );
      case DataSource.internalServerError:
        return Failure(
          code: ResponseCode.internalServerError,
          message: ResponseMessage.internalServerError,
        );
      case DataSource.connectionTimeOut:
        return Failure(
          code: ResponseCode.connectionTimeOut,
          message: ResponseMessage.connectionTimeOut,
        );
      case DataSource.cancel:
        return Failure(
          code: ResponseCode.cancel,
          message: ResponseMessage.cancel,
        );
      case DataSource.receiveTimeOut:
        return Failure(
          code: ResponseCode.receiveTimeOut,
          message: ResponseMessage.receiveTimeOut,
        );
      case DataSource.sendTimeOut:
        return Failure(
          code: ResponseCode.sendTimeOut,
          message: ResponseMessage.sendTimeOut,
        );
      case DataSource.cacheError:
        return Failure(
          code: ResponseCode.cacheError,
          message: ResponseMessage.cacheError,
        );
      case DataSource.noInternetConnection:
        return Failure(
          code: ResponseCode.noInternetConnection,
          message: ResponseMessage.noInternetConnection,
        );
      case DataSource.default_:
        return Failure(
          code: ResponseCode.default_,
          message: ResponseMessage.default_,
        );
      case DataSource.success:
        return Failure(
          code: ResponseCode.success,
          message: ResponseMessage.success,
        );
      case DataSource.noContent:
        return Failure(
          code: ResponseCode.noContent,
          message: ResponseMessage.noContent,
        );
      case DataSource.badCertificate:
        return Failure(
          code: ResponseCode.badCertificate,
          message: ResponseMessage.badCertificate,
        );
      case DataSource.badResponse:
        return Failure(
          code: ResponseCode.badResponse,
          message: ResponseMessage.badResponse,
        );
      case DataSource.connectionError:
        return Failure(
          code: ResponseCode.connectionError,
          message: ResponseMessage.connectionError,
        );
      case DataSource.unknown:
        return Failure(
          code: ResponseCode.unknown,
          message: ResponseMessage.unknown,
        );
    }
  }
}

class ResponseCode {
  // API status codes
  static const int success = 200;
  static const int noContent = 201;
  static const int badRequest = 400;
  static const int unAuthorised = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int badCertificate = 495;
  static const int internalServerError = 500;
  static const int unknown = 520;
  static const int default_ = -1;
  static const int connectionTimeOut = -2;
  static const int cancel = -3;
  static const int receiveTimeOut = -4;
  static const int sendTimeOut = -5;
  static const int cacheError = -6;
  static const int noInternetConnection = -7;
  static const int badResponse = -9;
  static const int connectionError = -8;
}

class ResponseMessage {
  static const String success = "Success";
  static const String noContent = "No Content";
  static const String badRequest = "Bad Request";
  static const String forbidden = "Forbidden";
  static const String unAuthorised = "UnAuthorised";
  static const String notFound = "Not Found";
  static const String internalServerError = "Internal Server Error";

  static const String default_ = "Something went wrong";
  static const String connectionTimeOut = "Connection time out";
  static const String cancel = "Canceled";
  static const String receiveTimeOut = "Receive time out";
  static const String sendTimeOut = "Send time out";
  static const String cacheError = "Cache error";
  static const String noInternetConnection = "No Internet Connection";

  static const String unknown = "Unknown";
  static const String connectionError = "Connection Error";
  static const String badResponse = "Bad Response";
  static const String badCertificate = "Bad Certificate";
}
