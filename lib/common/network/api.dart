import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
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
