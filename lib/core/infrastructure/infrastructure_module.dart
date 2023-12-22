import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

@module
abstract class InfrastructureModule {
  @lazySingleton
  Talker talker() {
    return TalkerFlutter.init();
  }
}
