//Generated code

part of 'your_one_service.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$YourOneService extends YourOneService {
  _$YourOneService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = YourOneService;

  @override
  Future<Response<Tokens>> _apiPersonLoginPost({required LoginDTO? loginData}) {
    final $url = '/api/person/login';
    final $body = loginData;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Tokens, Tokens>($request);
  }

  @override
  Future<Response<Person>> _apiPersonMeGet({String? authorization}) {
    final $url = '/api/person/me';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<Person, Person>($request);
  }

  @override
  Future<Response<Tokens>> _apiPersonSignUpPost(
      {required RegistrationDTO? registerData}) {
    final $url = '/api/person/sign-up';
    final $body = registerData;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<Tokens, Tokens>($request);
  }
}
