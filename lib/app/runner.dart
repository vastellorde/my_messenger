import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:my_messenger/app/app.dart';
import 'package:my_messenger/app/runner.config.dart';
import 'package:my_messenger/firebase_options.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
class Runner {
  static Future<void> run() async {
    await initializeDepedencies();
    Bloc.observer = TalkerBlocObserver(talker: GetIt.I.get());
    runApp(const App());
  }

  static Future<void> initializeDepedencies() async {
    WidgetsFlutterBinding.ensureInitialized();
    $initGetIt(GetIt.instance);
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    if (kDebugMode) {
      await FirebaseAuth.instance.useAuthEmulator('localhost', 9090);
      FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
    }
  }
}
