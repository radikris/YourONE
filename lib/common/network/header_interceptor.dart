import 'dart:async';
import 'package:chopper/chopper.dart';
import 'package:yourone/features/authentication/data/auth_store.dart';

class HeaderInterceptor implements RequestInterceptor {
  static const String AUTH_HEADER = "Authorization";

  static const String BEARER = "Bearer ";

  HeaderInterceptor(this.store);

  AuthStore store;

  @override
  FutureOr<Request> onRequest(Request request) async {
    if (store.currentUserToken == null) return request;
    Request newRequest = request
        .copyWith(headers: {AUTH_HEADER: BEARER + store.currentUserToken!});
    return newRequest;
  }
}
