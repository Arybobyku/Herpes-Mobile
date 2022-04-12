// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import 'di/register_module.dart' as _i9;
import 'provider/home/home_bloc.dart' as _i8;
import 'provider/landing/landing_bloc.dart' as _i4;
import 'request/home/home_request.dart' as _i3;
import 'simple_bloc_delegate.dart' as _i7;
import 'ui/my_app.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.HomeRequest>(() => _i3.HomeRequestBase());
  gh.factory<_i4.LandingBloc>(() => _i4.LandingBloc());
  gh.lazySingleton<_i5.Logger>(() => registerModule.logger);
  gh.factory<_i6.MyApp>(() => _i6.MyApp());
  gh.factory<_i7.SimpleBlocObserver>(
      () => _i7.SimpleBlocObserver(get<_i5.Logger>()));
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(get<_i3.HomeRequest>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
