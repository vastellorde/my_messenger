import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

abstract interface class IDioClientCreator {
  Dio makeDioClient();
}

@Singleton(as: IDioClientCreator)
class DioClientCreator implements IDioClientCreator {
  @protected
  final Talker talker;

  DioClientCreator(this.talker);

  @override
  Dio makeDioClient() {
    final dio = Dio();
    const baseUrl = 'localhost';

    dio.httpClientAdapter = NativeAdapter();
    dio.interceptors.add(TalkerDioLogger(
      talker: talker,
      settings: const TalkerDioLoggerSettings(
        printRequestHeaders: true,
        printResponseHeaders: true,
      ),
    ));

    dio.options.baseUrl = baseUrl;
    dio.transformer = BackgroundTransformer();

    return dio;
  }
}
