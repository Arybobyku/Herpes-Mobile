// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

import 'database/interface/i_local_user_repository.dart' as _i7;
import 'database/repositories/local_user_repository.dart' as _i8;
import 'di/register_module.dart' as _i18;
import 'provider/article/article_bloc.dart' as _i14;
import 'provider/CBRAndRBR/cbr_and_rbr_bloc.dart' as _i4;
import 'provider/disease/disease_bloc.dart' as _i15;
import 'provider/home/home_bloc.dart' as _i16;
import 'provider/landing/landing_bloc.dart' as _i9;
import 'provider/symptom/symptom_bloc.dart' as _i17;
import 'request/article/article_request.dart' as _i3;
import 'request/disease/disease_request.dart' as _i5;
import 'request/home/home_request.dart' as _i6;
import 'request/symtpom/symptom_request.dart' as _i13;
import 'simple_bloc_delegate.dart' as _i12;
import 'ui/my_app.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ArticleRequest>(() => _i3.ArticleRequestBase());
  gh.factory<_i4.CbrAndRbrBloc>(() => _i4.CbrAndRbrBloc());
  gh.lazySingleton<_i5.DiseaseRequest>(() => _i5.DiseaseRequestBase());
  gh.lazySingleton<_i6.HomeRequest>(() => _i6.HomeRequestBase());
  gh.lazySingleton<_i7.ILocalUserRepository>(() => _i8.LocalUserRepository());
  gh.factory<_i9.LandingBloc>(() => _i9.LandingBloc());
  gh.lazySingleton<_i10.Logger>(() => registerModule.logger);
  gh.factory<_i11.MyApp>(() => _i11.MyApp());
  gh.factory<_i12.SimpleBlocObserver>(
      () => _i12.SimpleBlocObserver(get<_i10.Logger>()));
  gh.lazySingleton<_i13.SymptomRequest>(() => _i13.SymptomRequestBase());
  gh.factory<_i14.ArticleBloc>(
      () => _i14.ArticleBloc(get<_i3.ArticleRequest>()));
  gh.factory<_i15.DiseaseBloc>(
      () => _i15.DiseaseBloc(get<_i5.DiseaseRequest>()));
  gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(get<_i6.HomeRequest>()));
  gh.factory<_i17.SymptomBloc>(
      () => _i17.SymptomBloc(get<_i13.SymptomRequest>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
