import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:stomp_dart_client/stomp.dart';
import 'package:stomp_dart_client/stomp_config.dart';
import 'package:stomp_dart_client/stomp_frame.dart';
import 'package:yourone/common/network/header_interceptor.dart';
import 'package:yourone/common/network/logging_interceptor.dart';
import 'package:yourone/features/authentication/data/auth_store.dart';
import 'package:yourone/injection.dart';
import 'package:yourone/swagger_generated_code/your_one_service.swagger.dart';

@module
abstract class ApiInjectableModule {
  YourOneService getDio(AuthStore store) {
    //_setupLogging();

    return YourOneService.create(interceptors: [
      HeaderInterceptor(store),
      HttpLoggingInterceptor(),
      //LoggingInterceptor()
    ]);
  }
}

/* @module
abstract class WebSocketInjectableModule{
  StompClient getWs(){
    void onConnect(StompFrame frame) {
  stompClient!.subscribe(
    destination: destination,
    callback: (frame) {
      Map<String, dynamic> result = json.decode(frame.body!);
      //receive Message from topic
      _listMessage.add(result['content']);

      //Observe list message
      streamController.sink.add(_listMessage);
    },
  );
}

final stompClient = StompClient(
  config: StompConfig(
    url: ws_url,
    onConnect: onConnect,
    onWebSocketError: (dynamic error) => print(error.toString()),
  ),
);
  }
} */