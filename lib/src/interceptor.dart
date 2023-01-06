import 'package:flutter/material.dart';

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