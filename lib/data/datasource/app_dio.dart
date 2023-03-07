import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:pleasure_in_vegas/data/datasource/dio_adapter_mobile.dart';
import 'package:riverpod/riverpod.dart';

// import 'dio_adapter_stub.dart'
//     if (dart.library.io) 'dio_adapter_mobile.dart'
//     if (dart.library.js) 'dio_adapter_web.dart';

final dioProvider = Provider((_) => AppDio.getInstance());

class AppDio with DioMixin implements Dio {
  final String tag = "API call :";

  AppDio._([BaseOptions? options]) {

    options = BaseOptions(
      baseUrl: 'https://pleasureinvegas.com/',
      contentType: 'application/json',
      connectTimeout: 30000,
      sendTimeout: 30000,
      receiveTimeout: 30000,
      // headers: {
      //   "Accept": "application/json",
      //   "Access-Control_Allow_Origin": "*"
      // },
      // headers: {
      //    if(getString(prefToken).isNotEmpty)
      //   'Authorization': getString(prefToken).isEmpty? "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjMyLCJzY29wZSI6WyJDVVNUT01FUiJdLCJzZXNzaW9uSWQiOiJhZjNlYmY0YS00MTRmLTQzNjMtOTY1YS03NzJmNTU5Zjg3MjUiLCJpYXQiOjE2NjUwNDQ4Mzh9.HujnWmdFtTYskVuij0CbmLKUeDaJlbubXa6vJDnLGg8":getString(prefToken)
      // }
    );

    this.options = options;
    interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
      handler.next(options);
    }));

    if (kDebugMode) {
      interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }
    httpClientAdapter = getAdapter();
    // if (kIsWeb) {
    //   httpClientAdapter = getAdapter();
    // } else {
    //   httpClientAdapter = getAdapter();
    // }
  }

  Future<Response> getApi(
    String endUrl, {
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    return await (get(
      endUrl,
      queryParameters: params,
      // options:
      //     Options(headers: {'Authorization': "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjE1LCJzY29wZSI6WyJBR0VOVCJdLCJzZXNzaW9uSWQiOiJhOTJkMDliNi1mZTY4LTRiZTAtOWM2MC05ZWE2OGMyY2UyNzciLCJpYXQiOjE2NjQ0NTM5NDh9.Y2CVtrrEzDMlQIBRgZzK44RPag0H_ScyfGYNL1l4gVE"}),
    )).catchError((e) {
      throw e;
    });
  }

  Future<Response> postApi(
    String endUrl, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    try {
      return await (post(
        endUrl,
        data: data,
        queryParameters: params,
        // options: Options(
        //     headers: {'Authorization': "Token " + getString(prefToken)}),
      ));
    } on DioError {
      rethrow;
    }
  }

  Future<Response> putApi(
    String endUrl, {
    Map<String, dynamic>? data,
    FormData? formData,
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    try {
      return await (put(
        endUrl,
        data: data ?? formData,
        queryParameters: params,
        // options: Options(
        //     headers: {'Authorization': "Token " + getString(prefToken)}),
      ));
    } on DioError {
      rethrow;
    }
  }

  Future<Response> multipartPost(
    String endUrl, {
    FormData? data,
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    try {
      return await (post(
        endUrl,
        data: data,
        queryParameters: params,
        // options: Options(
        //     headers: {'Authorization': "Token " + getString(prefToken)}),
      ));
    } on DioError {
      rethrow;
    }
  }

  Future<Response> multiPartPutApi(
    String endUrl, {
    FormData? data,
    Map<String, dynamic>? params,
    Options? options,
  }) async {
    try {
      return await (put(
        endUrl,
        data: data,
        queryParameters: params,
        // options: Options(
        //     headers: {'Authorization': "Token " + getString(prefToken)}),
      ));
    } on DioError {
      rethrow;
    }
  }

  static AppDio getInstance() => AppDio._();

  factory AppDio() {
    return getInstance();
  }
}
