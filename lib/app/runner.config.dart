// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i19;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i14;

import '../core/infrastructure/infrastructure_module.dart' as _i20;
import '../core/services/auth/auth_service.dart' as _i15;
import '../core/services/http/dio_client_creator.dart' as _i16;
import '../core/services/http/dio_client_module.dart' as _i22;
import '../features/auth/login/data/datasources/local/login_local_datasource.dart'
    as _i4;
import '../features/auth/login/data/datasources/remote/login_remote_datasource.dart'
    as _i5;
import '../features/auth/login/data/repositories/login_repository.dart' as _i7;
import '../features/auth/login/domain/repositories/login_repository.dart'
    as _i6;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i17;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i11;
import '../features/auth/register/data/datasource/remote/register_remote_datasource.dart'
    as _i8;
import '../features/auth/register/data/repositories/register_repository.dart'
    as _i10;
import '../features/auth/register/domain/repositories/register_repository.dart'
    as _i9;
import '../features/auth/register/presentation/state/register_bloc.dart'
    as _i12;
import '../features/auth/register/presentation/state/register_form_bloc.dart'
    as _i13;
import '../features/chat/presentation/state/chat_bloc.dart' as _i3;
import 'router/router.dart' as _i18;
import 'router/router_module.dart' as _i21;

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
  gh.factory<_i3.ChatBloc>(() => _i3.ChatBloc());
  gh.factory<_i4.ILoginLocalDatasource>(() => _i4.LoginLocalDatasource());
  gh.lazySingleton<_i5.ILoginRemoteDatasource>(
      () => _i5.LoginRemoteDatasource());
  gh.lazySingleton<_i6.ILoginRepository>(
      () => _i7.LoginRepository(gh<_i5.ILoginRemoteDatasource>()));
  gh.lazySingleton<_i8.IRegisterRemoteDatasource>(
      () => _i8.RegisterRemoteDatasource());
  gh.lazySingleton<_i9.IRegisterRepository>(
      () => _i10.RegisterRepository(gh<_i8.IRegisterRemoteDatasource>()));
  gh.factory<_i11.LoginFormBloc>(() => _i11.LoginFormBloc());
  gh.factory<_i12.RegisterBloc>(
      () => _i12.RegisterBloc(gh<_i9.IRegisterRepository>()));
  gh.factory<_i13.RegisterFormBloc>(() => _i13.RegisterFormBloc());
  gh.lazySingleton<_i14.Talker>(() => infrastructureModule.talker());
  gh.singleton<_i15.IAuthService>(
    _i15.AuthService(talker: gh<_i14.Talker>()),
    dispose: _i15.disposeService,
  );
  gh.singleton<_i16.IDioClientCreator>(
      _i16.DioClientCreator(gh<_i14.Talker>()));
  gh.factory<_i17.LoginBloc>(() => _i17.LoginBloc(
        gh<_i14.Talker>(),
        gh<_i6.ILoginRepository>(),
      ));
  gh.singleton<_i18.AppRouter>(routerModule.appRouter(gh<_i15.IAuthService>()));
  gh.singleton<_i19.Dio>(
      dioClientModule.makeDioClient(gh<_i16.IDioClientCreator>()));
  return getIt;
}

class _$InfrastructureModule extends _i20.InfrastructureModule {}

class _$RouterModule extends _i21.RouterModule {}

class _$DioClientModule extends _i22.DioClientModule {}
