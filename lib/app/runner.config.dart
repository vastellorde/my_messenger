// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i20;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:talker_flutter/talker_flutter.dart' as _i17;

import '../core/infrastructure/infrastructure_module.dart' as _i22;
import '../core/services/http/dio_client_creator.dart' as _i18;
import '../core/services/http/dio_client_module.dart' as _i23;
import '../core/services/user/user_service.dart' as _i12;
import '../features/auth/login/data/datasources/local/login_local_datasource.dart'
    as _i5;
import '../features/auth/login/data/datasources/remote/login_remote_datasource.dart'
    as _i6;
import '../features/auth/login/data/repositories/login_repository.dart' as _i8;
import '../features/auth/login/domain/repositories/login_repository.dart'
    as _i7;
import '../features/auth/login/presentation/state/login_bloc.dart' as _i19;
import '../features/auth/login/presentation/state/login_form_bloc.dart' as _i13;
import '../features/auth/register/data/datasource/remote/register_remote_datasource.dart'
    as _i9;
import '../features/auth/register/data/repositories/register_repository.dart'
    as _i11;
import '../features/auth/register/domain/repositories/register_repository.dart'
    as _i10;
import '../features/auth/register/presentation/state/register_bloc.dart'
    as _i15;
import '../features/auth/register/presentation/state/register_form_bloc.dart'
    as _i16;
import '../features/chat/presentation/state/chat_bloc.dart' as _i4;
import '../features/profile/presentation/state/profile_bloc.dart' as _i14;
import 'router/router.dart' as _i3;
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
  final routerModule = _$RouterModule();
  final infrastructureModule = _$InfrastructureModule();
  final dioClientModule = _$DioClientModule();
  gh.singleton<_i3.AppRouter>(routerModule.appRouter());
  gh.factory<_i4.ChatBloc>(() => _i4.ChatBloc());
  gh.factory<_i5.ILoginLocalDatasource>(() => _i5.LoginLocalDatasource());
  gh.lazySingleton<_i6.ILoginRemoteDatasource>(
      () => _i6.LoginRemoteDatasource());
  gh.lazySingleton<_i7.ILoginRepository>(
      () => _i8.LoginRepository(gh<_i6.ILoginRemoteDatasource>()));
  gh.lazySingleton<_i9.IRegisterRemoteDatasource>(
      () => _i9.RegisterRemoteDatasource());
  gh.lazySingleton<_i10.IRegisterRepository>(
      () => _i11.RegisterRepository(gh<_i9.IRegisterRemoteDatasource>()));
  gh.singleton<_i12.IUserService>(_i12.UserService());
  gh.factory<_i13.LoginFormBloc>(() => _i13.LoginFormBloc());
  gh.factory<_i14.ProfileBloc>(() => _i14.ProfileBloc(gh<_i12.IUserService>()));
  gh.factory<_i15.RegisterBloc>(() => _i15.RegisterBloc(
        gh<_i10.IRegisterRepository>(),
        gh<_i12.IUserService>(),
      ));
  gh.factory<_i16.RegisterFormBloc>(() => _i16.RegisterFormBloc());
  gh.lazySingleton<_i17.Talker>(() => infrastructureModule.talker());
  gh.singleton<_i18.IDioClientCreator>(
      _i18.DioClientCreator(gh<_i17.Talker>()));
  gh.factory<_i19.LoginBloc>(() => _i19.LoginBloc(
        gh<_i17.Talker>(),
        gh<_i7.ILoginRepository>(),
      ));
  gh.singleton<_i20.Dio>(
      dioClientModule.makeDioClient(gh<_i18.IDioClientCreator>()));
  return getIt;
}

class _$RouterModule extends _i21.RouterModule {}

class _$InfrastructureModule extends _i22.InfrastructureModule {}

class _$DioClientModule extends _i23.DioClientModule {}
