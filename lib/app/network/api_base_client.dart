import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../configs/configs.dart';
import '../di.dart';

class ApiBaseClient {
  static final BaseOptions _opts = BaseOptions(
    baseUrl: AppConsts.baseURL,
    responseType: ResponseType.json,
    headers: {
      "Accept": "application/json",
    },
  );

  static Dio _createDio() {
    return Dio(_opts);
  }

  static Dio _addInterceptors(Dio dio) {
    if (kDebugMode) {
      dio.interceptors.add(getIt.get<PrettyDioLogger>());
    }
    return dio;
  }

  static final _dio = _createDio();
  static final client = _addInterceptors(_dio);
}
