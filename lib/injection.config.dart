// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i7;

import 'di/register_module.dart' as _i14;
import 'provider/article/article_bloc.dart' as _i11;
import 'provider/CBRAndRBR/cbr_and_rbr_bloc.dart' as _i4;
import 'provider/home/home_bloc.dart' as _i12;
import 'provider/landing/landing_bloc.dart' as _i6;
import 'provider/symptom/symptom_bloc.dart' as _i13;
import 'request/article/article_request.dart' as _i3;
import 'request/home/home_request.dart' as _i5;
import 'request/symtpom/symptom_request.dart' as _i10;
import 'simple_bloc_delegate.dart' as _i9;
import 'ui/my_app.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ArticleRequest>(() => _i3.ArticleRequestBase());
  gh.factory<_i4.CbrAndRbrBloc>(() => _i4.CbrAndRbrBloc());
  gh.lazySingleton<_i5.HomeRequest>(() => _i5.HomeRequestBase());
  gh.factory<_i6.LandingBloc>(() => _i6.LandingBloc());
  gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
  gh.factory<_i8.MyApp>(() => _i8.MyApp());
  gh.factory<_i9.SimpleBlocObserver>(
      () => _i9.SimpleBlocObserver(get<_i7.Logger>()));
  gh.lazySingleton<_i10.SymptomRequest>(() => _i10.SymptomRequestBase());
  gh.factory<_i11.ArticleBloc>(
      () => _i11.ArticleBloc(get<_i3.ArticleRequest>()));
  gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(get<_i5.HomeRequest>()));
  gh.factory<_i13.SymptomBloc>(
      () => _i13.SymptomBloc(get<_i10.SymptomRequest>()));
  return get;
}

class _$RegisterModule extends _i14.RegisterModule {}
