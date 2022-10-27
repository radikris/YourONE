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
  Future<Response<List<Person>>> _apiChatGet({String? authorization}) {
    final $url = '/api/chat';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<Person>, Person>($request);
  }

  @override
  Future<Response<List<MessageEntity>>> _apiChatAllGet() {
    final $url = '/api/chat/all';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<MessageEntity>, MessageEntity>($request);
  }

  @override
  Future<Response<ChatNotification>> _apiChatPostTestPost(
      {required SendMessageDTO? dto}) {
    final $url = '/api/chat/post-test';
    final $body = dto;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<ChatNotification, ChatNotification>($request);
  }

  @override
  Future<Response<List<MessageEntity>>> _apiChatAddresseeIdGet({
    String? authorization,
    required int? addresseeId,
  }) {
    final $url = '/api/chat/${addresseeId}';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<MessageEntity>, MessageEntity>($request);
  }

  @override
  Future<Response<int>> _apiChatAddresseeIdCountGet({
    String? authorization,
    required int? addresseeId,
  }) {
    final $url = '/api/chat/${addresseeId}/count';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<int, int>($request);
  }

  @override
  Future<Response<List<PersonAllDTO>>> _apiPersonGet() {
    final $url = '/api/person/';
    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<PersonAllDTO>, PersonAllDTO>($request);
  }

  @override
  Future<Response<List<PersonAllDTO>>> _apiPersonAllPartnersGet(
      {String? authorization}) {
    final $url = '/api/person/all-partners';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<PersonAllDTO>, PersonAllDTO>($request);
  }

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
  Future<Response<PersonAllDTO>> _apiPersonMeGet({String? authorization}) {
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
    return client.send<PersonAllDTO, PersonAllDTO>($request);
  }

  @override
  Future<Response<bool>> _apiPersonPartnerMatchNoPost({
    String? authorization,
    required num? partnerId,
  }) {
    final $url = '/api/person/partner-match/no';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $body = partnerId;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<bool>> _apiPersonPartnerMatchYesPost({
    String? authorization,
    required num? partnerId,
  }) {
    final $url = '/api/person/partner-match/yes';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $body = partnerId;
    final $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      headers: $headers,
    );
    return client.send<bool, bool>($request);
  }

  @override
  Future<Response<List<PersonAllDTO>>> _apiPersonPotentialPartnersGet(
      {String? authorization}) {
    final $url = '/api/person/potential-partners';
    final $headers = {
      if (authorization != null) 'Authorization': authorization,
    };

    final $request = Request(
      'GET',
      $url,
      client.baseUrl,
      headers: $headers,
    );
    return client.send<List<PersonAllDTO>, PersonAllDTO>($request);
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

  @override
  Future<Response<PersonAllDTO>> _apiPersonIdPut({
    required int? id,
    required PersonAllDTO? newData,
  }) {
    final $url = '/api/person/${id}';
    final $body = newData;
    final $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<PersonAllDTO, PersonAllDTO>($request);
  }
}
