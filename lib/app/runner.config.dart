// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i7;

import '../core/infrastructure/infrastructure_module.dart' as _i12;
import '../core/services/auth/auth_service.dart' as _i3;
import '../core/services/http/dio_client_creator.dart' as _i9;
import '../core/services/http/dio_client_module.dart' as _i14;
import '../features/auth/login/data/datasources/local/login_local_datasource.dart'
    as _i4;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i5;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i6;
import 'router/guards/auth_guard.dart' as _i8;
import 'router/router.dart' as _i10;
import 'router/router_module.dart' as _i13;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final infrastructureModule = _$InfrastructureModule();
  final routerModule = _$RouterModule();
  final dioClientModule = _$DioClientModule();
  gh.singleton<_i3.IAuthService>(
    _i3.AuthService(),
    dispose: _i3.disposeService,
  );
  gh.factory<_i4.ILoginLocalDatasource>(() => _i4.LoginLocalDatasource());
  gh.factory<_i5.LoginBloc>(() => _i5.LoginBloc());
  gh.factory<_i6.LoginFormBloc>(() => _i6.LoginFormBloc());
  gh.lazySingleton<_i7.Talker>(() => infrastructureModule.talker());
  gh.singleton<_i8.AuthGuard>(routerModule.authGuard(gh<_i3.IAuthService>()));
  gh.singleton<_i9.IDioClientCreator>(_i9.DioClientCreator(gh<_i7.Talker>()));
  gh.singleton<_i10.AppRouter>(routerModule.appRouter(gh<_i8.AuthGuard>()));
  gh.singleton<_i11.Dio>(
      dioClientModule.makeDioClient(gh<_i9.IDioClientCreator>()));
  return getIt;
}

class _$InfrastructureModule extends _i12.InfrastructureModule {}

class _$RouterModule extends _i13.RouterModule {}

class _$DioClientModule extends _i14.DioClientModule {}
