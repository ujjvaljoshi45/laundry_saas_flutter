import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:laundry_saas_flutter/services/api_contants.dart';
import 'package:laundry_saas_flutter/utils/tools.dart';

class ApiManager {
  static final ApiManager _instance = ApiManager._();
  late final Dio _dio;

  factory ApiManager() {
    return _instance;
  }
  ApiManager._() {
    _dio = Dio(BaseOptions(baseUrl: ApiConstants.baseUrl, contentType: "application/json"));
    if (kDebugMode) {
      _dio.interceptors.add(LogInterceptor(
        error: true,
        responseBody: true,
        request: false,
        requestBody: false,
        responseHeader: true,
        requestHeader: false,
        logPrint: (object) => Tools.log(object.toString()),
      ));
    }
  }

  Future<Response> get(String url,
          {Map<String, dynamic>? queryParameters,
          Options? options,
          Map<String, dynamic>? data}) async =>
      await _dio.get(url, options: options, queryParameters: queryParameters, data: data);

  Future<Response> post(String url,
          {Map<String, dynamic>? queryParameters,
          Options? options,
          Map<String, dynamic>? data}) async =>
      await _dio.post(
        url,
        options: options,
        data: data,
        queryParameters: queryParameters,
      );
}
