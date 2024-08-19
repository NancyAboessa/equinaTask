import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:nancyaboessatask/core/utils/end_points/end_points.dart';
class DioHelper {
  static Dio? dio;

  static Future<void> init() async {
    dio = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        receiveDataWhenStatusError: true,
        followRedirects: false,
        validateStatus: (status) => true,
      ),
    );
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  static Future<Response> getData({
    required String endPointUrl,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    try {
      dio?.options.headers = {
        'Authorization': 'Bearer $token',
        "Accept": "application/json",
        "Connection": "keep-alive",
      };
      return await dio!.get(
        endPointUrl,
        queryParameters: query,
        options: Options(
          validateStatus: (_) => true,
          contentType: Headers.jsonContentType,
          responseType: ResponseType.json,
        ),
      );
    } catch (error) {
      debugPrint(error.toString());
      rethrow;
    }
  }
}
