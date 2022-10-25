import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';

/// [LoggingInterceptor] is used to print logs during network requests.
/// It's better to add [LoggingInterceptor] to the tail of the interceptor queue,
/// otherwise the changes made in the interceptor behind A will not be printed out.
/// This is because the execution of interceptors is in the order of addition.
class LoggingInterceptor extends RequestInterceptor {
  LoggingInterceptor();

  @override
  FutureOr<Request> onRequest(Request request) async {
    logPrint('*** API Request - Start ***');

    logPrint('HEADERS:');
    request.headers.forEach((key, v) => printKV(' - $key', v));
    logPrint('BODY:');
    printAll(request.body ?? "");
    logPrint('*** API Request - End ***');
    return request;
  }

  @override
  Future onResponse(Response response) async {
/*     logPrint('*** Api Response - Start ***');

    printKV('URI', response.request?.uri);
    printKV('STATUS CODE', response.statusCode);
    printKV('REDIRECT', response.isRedirect);
    logPrint('BODY:');
    printAll(response.data ?? "");

    logPrint('*** Api Response - End ***'); */

    return response;
  }

  void printKV(String key, Object v) {
    logPrint('$key: $v');
  }

  void printAll(msg) {
    msg.toString().split('\n').forEach(logPrint);
  }

  void logPrint(String s) {
    debugPrint(s);
  }
}
