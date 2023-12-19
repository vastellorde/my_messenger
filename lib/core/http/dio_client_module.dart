import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/core/http/dio_client_creator.dart';

@module
abstract class DioClientModule {
  @singleton
  Dio makeDioClient(IDioClientCreator creator) => creator.makeDioClient();
}
