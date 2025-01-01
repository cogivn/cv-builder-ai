// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cv_builder_ai/src/core/config/network_module.dart' as _i15;
import 'package:cv_builder_ai/src/core/config/talker_module.dart' as _i879;
import 'package:cv_builder_ai/src/core/lifecycle/app_lifecycle.dart' as _i791;
import 'package:cv_builder_ai/src/domain/auth/repositories/auth_repository.dart'
    as _i766;
import 'package:cv_builder_ai/src/domain/content/repositories/content_repository.dart'
    as _i677;
import 'package:cv_builder_ai/src/domain/cv/repositories/cv_repository.dart'
    as _i185;
import 'package:cv_builder_ai/src/domain/onboarding/repositories/onboarding_repository.dart'
    as _i676;
import 'package:cv_builder_ai/src/infrastructure/auth/repositories/auth_repository_impl.dart'
    as _i130;
import 'package:cv_builder_ai/src/infrastructure/auth/repositories/auth_repository_mockup.dart'
    as _i609;
import 'package:cv_builder_ai/src/infrastructure/content/repositories/content_repository_mockup.dart'
    as _i21;
import 'package:cv_builder_ai/src/infrastructure/cv/repositories/cv_repository_mockup.dart'
    as _i1043;
import 'package:cv_builder_ai/src/infrastructure/onboarding/repositories/onboarding_repository_mockup.dart'
    as _i1059;
import 'package:cv_builder_ai/src/presentation/router/app_router.dart' as _i421;
import 'package:cv_builder_ai/src/presentation/router/guards/auth_guard.dart'
    as _i1039;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker/talker.dart' as _i993;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

const String _test = 'test';
const String _alpha = 'alpha';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final talkerModule = _$TalkerModule();
    final networkModule = _$NetworkModule();
    gh.singleton<_i207.Talker>(() => talkerModule.talker());
    gh.singleton<_i791.AppLifecycle>(
      () => _i791.AppLifecycle(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i766.AuthRepository>(() => _i130.AuthRepositoryImpl());
    gh.singleton<_i677.ContentRepository>(() => _i21.ContentRepositoryMockup());
    gh.factory<String>(
      () => networkModule.baseUrl,
      instanceName: 'baseUrl',
    );
    gh.factory<_i676.OnboardingRepository>(
        () => _i1059.OnboardingRepositoryMockup());
    gh.lazySingleton<_i766.AuthRepository>(
      () => _i609.AuthRepositoryMockup(),
      registerFor: {_test},
    );
    gh.singleton<_i185.CVRepository>(
      () => _i1043.CVRepositoryMockup(),
      registerFor: {_alpha},
    );
    gh.factory<_i1039.AuthGuard>(
        () => _i1039.AuthGuard(gh<_i766.AuthRepository>()));
    gh.singleton<_i361.Dio>(() => networkModule.dio(
          gh<String>(instanceName: 'baseUrl'),
          gh<_i993.Talker>(),
        ));
    gh.singleton<_i421.AppRouter>(
        () => _i421.AppRouter(gh<_i1039.AuthGuard>()));
    return this;
  }
}

class _$TalkerModule extends _i879.TalkerModule {}

class _$NetworkModule extends _i15.NetworkModule {}
