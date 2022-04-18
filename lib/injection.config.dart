// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import 'di/register_module.dart' as _i13;
import 'provider/article/article_bloc.dart' as _i10;
import 'provider/home/home_bloc.dart' as _i11;
import 'provider/landing/landing_bloc.dart' as _i5;
import 'provider/symptom/symptom_bloc.dart' as _i12;
import 'request/article/article_request.dart' as _i3;
import 'request/home/home_request.dart' as _i4;
import 'request/symtpom/symptom_request.dart' as _i9;
import 'simple_bloc_delegate.dart' as _i8;
import 'ui/my_app.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ArticleRequest>(() => _i3.ArticleRequestBase());
  gh.lazySingleton<_i4.HomeRequest>(() => _i4.HomeRequestBase());
  gh.factory<_i5.LandingBloc>(() => _i5.LandingBloc());
  gh.lazySingleton<_i6.Logger>(() => registerModule.logger);
  gh.factory<_i7.MyApp>(() => _i7.MyApp());
  gh.factory<_i8.SimpleBlocObserver>(
      () => _i8.SimpleBlocObserver(get<_i6.Logger>()));
  gh.lazySingleton<_i9.SymptomRequest>(() => _i9.SymptomRequestBase());
  gh.factory<_i10.ArticleBloc>(
      () => _i10.ArticleBloc(get<_i3.ArticleRequest>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(get<_i4.HomeRequest>()));
  gh.factory<_i12.SymptomBloc>(
      () => _i12.SymptomBloc(get<_i9.SymptomRequest>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
