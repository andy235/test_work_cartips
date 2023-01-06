import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class MockInterceptor extends Interceptor {
  static const _jsonDir = 'assets/json/';
  static const _jsonExtension = '.json';

  @override
  Future onRequest(RequestOptions options) async {
    final resourcePath = _jsonDir + options.path + _jsonExtension;
    final data = await rootBundle.load(resourcePath);
    final map = json.decode(
      utf8.decode(
        data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
      ),
    );

    return Response(
      data: map,
      statusCode: 200,
    );
  }

  static void _commonDevelopment() {
    container.registerInstance<Iterable<Interceptor>, List<Interceptor>>(
      <Interceptor>[
        if (Environment.current.useMockData) MockInterceptor(),
      ],
    );
  }

  static void _commonProduction() {
    container.registerInstance<Iterable<Interceptor>, List<Interceptor>>(
      <Interceptor>[],
    );
  }
  static void _common() {
    // ...

    container.registerSingleton(
          (c) => Dio(BaseOptions(
        baseUrl: Environment.current.baseUrl,
      ))
        ..interceptors.addAll(c.resolve()),
    );

    // ...
  }

}