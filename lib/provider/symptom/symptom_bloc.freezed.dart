// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symptom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SymptomEventTearOff {
  const _$SymptomEventTearOff();

  _WatchAll watchAll(BuildContext context) {
    return _WatchAll(
      context,
    );
  }

  _selectedSymptom selectedSymptom(SymptomModel symptomModel) {
    return _selectedSymptom(
      symptomModel,
    );
  }
}

/// @nodoc
const $SymptomEvent = _$SymptomEventTearOff();

/// @nodoc
mixin _$SymptomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) watchAll,
    required TResult Function(SymptomModel symptomModel) selectedSymptom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? watchAll,
    TResult Function(SymptomModel symptomModel)? selectedSymptom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? watchAll,
    TResult Function(SymptomModel symptomModel)? selectedSymptom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_selectedSymptom value) selectedSymptom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_selectedSymptom value)? selectedSymptom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_selectedSymptom value)? selectedSymptom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomEventCopyWith<$Res> {
  factory $SymptomEventCopyWith(
          SymptomEvent value, $Res Function(SymptomEvent) then) =
      _$SymptomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SymptomEventCopyWithImpl<$Res> implements $SymptomEventCopyWith<$Res> {
  _$SymptomEventCopyWithImpl(this._value, this._then);

  final SymptomEvent _value;
  // ignore: unused_field
  final $Res Function(SymptomEvent) _then;
}

/// @nodoc
abstract class _$WatchAllCopyWith<$Res> {
  factory _$WatchAllCopyWith(_WatchAll value, $Res Function(_WatchAll) then) =
      __$WatchAllCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$WatchAllCopyWithImpl<$Res> extends _$SymptomEventCopyWithImpl<$Res>
    implements _$WatchAllCopyWith<$Res> {
  __$WatchAllCopyWithImpl(_WatchAll _value, $Res Function(_WatchAll) _then)
      : super(_value, (v) => _then(v as _WatchAll));

  @override
  _WatchAll get _value => super._value as _WatchAll;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_WatchAll(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_WatchAll implements _WatchAll {
  const _$_WatchAll(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SymptomEvent.watchAll(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchAll &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      __$WatchAllCopyWithImpl<_WatchAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) watchAll,
    required TResult Function(SymptomModel symptomModel) selectedSymptom,
  }) {
    return watchAll(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? watchAll,
    TResult Function(SymptomModel symptomModel)? selectedSymptom,
  }) {
    return watchAll?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? watchAll,
    TResult Function(SymptomModel symptomModel)? selectedSymptom,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_selectedSymptom value) selectedSymptom,
  }) {
    return watchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_selectedSymptom value)? selectedSymptom,
  }) {
    return watchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_selectedSymptom value)? selectedSymptom,
    required TResult orElse(),
  }) {
    if (watchAll != null) {
      return watchAll(this);
    }
    return orElse();
  }
}

abstract class _WatchAll implements SymptomEvent {
  const factory _WatchAll(BuildContext context) = _$_WatchAll;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$WatchAllCopyWith<_WatchAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$selectedSymptomCopyWith<$Res> {
  factory _$selectedSymptomCopyWith(
          _selectedSymptom value, $Res Function(_selectedSymptom) then) =
      __$selectedSymptomCopyWithImpl<$Res>;
  $Res call({SymptomModel symptomModel});

  $SymptomModelCopyWith<$Res> get symptomModel;
}

/// @nodoc
class __$selectedSymptomCopyWithImpl<$Res>
    extends _$SymptomEventCopyWithImpl<$Res>
    implements _$selectedSymptomCopyWith<$Res> {
  __$selectedSymptomCopyWithImpl(
      _selectedSymptom _value, $Res Function(_selectedSymptom) _then)
      : super(_value, (v) => _then(v as _selectedSymptom));

  @override
  _selectedSymptom get _value => super._value as _selectedSymptom;

  @override
  $Res call({
    Object? symptomModel = freezed,
  }) {
    return _then(_selectedSymptom(
      symptomModel == freezed
          ? _value.symptomModel
          : symptomModel // ignore: cast_nullable_to_non_nullable
              as SymptomModel,
    ));
  }

  @override
  $SymptomModelCopyWith<$Res> get symptomModel {
    return $SymptomModelCopyWith<$Res>(_value.symptomModel, (value) {
      return _then(_value.copyWith(symptomModel: value));
    });
  }
}

/// @nodoc

class _$_selectedSymptom implements _selectedSymptom {
  const _$_selectedSymptom(this.symptomModel);

  @override
  final SymptomModel symptomModel;

  @override
  String toString() {
    return 'SymptomEvent.selectedSymptom(symptomModel: $symptomModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _selectedSymptom &&
            const DeepCollectionEquality()
                .equals(other.symptomModel, symptomModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(symptomModel));

  @JsonKey(ignore: true)
  @override
  _$selectedSymptomCopyWith<_selectedSymptom> get copyWith =>
      __$selectedSymptomCopyWithImpl<_selectedSymptom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) watchAll,
    required TResult Function(SymptomModel symptomModel) selectedSymptom,
  }) {
    return selectedSymptom(symptomModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? watchAll,
    TResult Function(SymptomModel symptomModel)? selectedSymptom,
  }) {
    return selectedSymptom?.call(symptomModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? watchAll,
    TResult Function(SymptomModel symptomModel)? selectedSymptom,
    required TResult orElse(),
  }) {
    if (selectedSymptom != null) {
      return selectedSymptom(symptomModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAll value) watchAll,
    required TResult Function(_selectedSymptom value) selectedSymptom,
  }) {
    return selectedSymptom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_selectedSymptom value)? selectedSymptom,
  }) {
    return selectedSymptom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAll value)? watchAll,
    TResult Function(_selectedSymptom value)? selectedSymptom,
    required TResult orElse(),
  }) {
    if (selectedSymptom != null) {
      return selectedSymptom(this);
    }
    return orElse();
  }
}

abstract class _selectedSymptom implements SymptomEvent {
  const factory _selectedSymptom(SymptomModel symptomModel) =
      _$_selectedSymptom;

  SymptomModel get symptomModel;
  @JsonKey(ignore: true)
  _$selectedSymptomCopyWith<_selectedSymptom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SymptomStateTearOff {
  const _$SymptomStateTearOff();

  _SymptomState call(
      {required IList<SymptomModel> selectedSymptoms,
      required bool isLoading,
      required Option<Either<ResponseError, IList<SymptomModel>>>
          optionFailureOrSymptoms}) {
    return _SymptomState(
      selectedSymptoms: selectedSymptoms,
      isLoading: isLoading,
      optionFailureOrSymptoms: optionFailureOrSymptoms,
    );
  }
}

/// @nodoc
const $SymptomState = _$SymptomStateTearOff();

/// @nodoc
mixin _$SymptomState {
  IList<SymptomModel> get selectedSymptoms =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ResponseError, IList<SymptomModel>>>
      get optionFailureOrSymptoms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SymptomStateCopyWith<SymptomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomStateCopyWith<$Res> {
  factory $SymptomStateCopyWith(
          SymptomState value, $Res Function(SymptomState) then) =
      _$SymptomStateCopyWithImpl<$Res>;
  $Res call(
      {IList<SymptomModel> selectedSymptoms,
      bool isLoading,
      Option<Either<ResponseError, IList<SymptomModel>>>
          optionFailureOrSymptoms});
}

/// @nodoc
class _$SymptomStateCopyWithImpl<$Res> implements $SymptomStateCopyWith<$Res> {
  _$SymptomStateCopyWithImpl(this._value, this._then);

  final SymptomState _value;
  // ignore: unused_field
  final $Res Function(SymptomState) _then;

  @override
  $Res call({
    Object? selectedSymptoms = freezed,
    Object? isLoading = freezed,
    Object? optionFailureOrSymptoms = freezed,
  }) {
    return _then(_value.copyWith(
      selectedSymptoms: selectedSymptoms == freezed
          ? _value.selectedSymptoms
          : selectedSymptoms // ignore: cast_nullable_to_non_nullable
              as IList<SymptomModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionFailureOrSymptoms: optionFailureOrSymptoms == freezed
          ? _value.optionFailureOrSymptoms
          : optionFailureOrSymptoms // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, IList<SymptomModel>>>,
    ));
  }
}

/// @nodoc
abstract class _$SymptomStateCopyWith<$Res>
    implements $SymptomStateCopyWith<$Res> {
  factory _$SymptomStateCopyWith(
          _SymptomState value, $Res Function(_SymptomState) then) =
      __$SymptomStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {IList<SymptomModel> selectedSymptoms,
      bool isLoading,
      Option<Either<ResponseError, IList<SymptomModel>>>
          optionFailureOrSymptoms});
}

/// @nodoc
class __$SymptomStateCopyWithImpl<$Res> extends _$SymptomStateCopyWithImpl<$Res>
    implements _$SymptomStateCopyWith<$Res> {
  __$SymptomStateCopyWithImpl(
      _SymptomState _value, $Res Function(_SymptomState) _then)
      : super(_value, (v) => _then(v as _SymptomState));

  @override
  _SymptomState get _value => super._value as _SymptomState;

  @override
  $Res call({
    Object? selectedSymptoms = freezed,
    Object? isLoading = freezed,
    Object? optionFailureOrSymptoms = freezed,
  }) {
    return _then(_SymptomState(
      selectedSymptoms: selectedSymptoms == freezed
          ? _value.selectedSymptoms
          : selectedSymptoms // ignore: cast_nullable_to_non_nullable
              as IList<SymptomModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionFailureOrSymptoms: optionFailureOrSymptoms == freezed
          ? _value.optionFailureOrSymptoms
          : optionFailureOrSymptoms // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResponseError, IList<SymptomModel>>>,
    ));
  }
}

/// @nodoc

class _$_SymptomState implements _SymptomState {
  const _$_SymptomState(
      {required this.selectedSymptoms,
      required this.isLoading,
      required this.optionFailureOrSymptoms});

  @override
  final IList<SymptomModel> selectedSymptoms;
  @override
  final bool isLoading;
  @override
  final Option<Either<ResponseError, IList<SymptomModel>>>
      optionFailureOrSymptoms;

  @override
  String toString() {
    return 'SymptomState(selectedSymptoms: $selectedSymptoms, isLoading: $isLoading, optionFailureOrSymptoms: $optionFailureOrSymptoms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SymptomState &&
            const DeepCollectionEquality()
                .equals(other.selectedSymptoms, selectedSymptoms) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.optionFailureOrSymptoms, optionFailureOrSymptoms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedSymptoms),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(optionFailureOrSymptoms));

  @JsonKey(ignore: true)
  @override
  _$SymptomStateCopyWith<_SymptomState> get copyWith =>
      __$SymptomStateCopyWithImpl<_SymptomState>(this, _$identity);
}

abstract class _SymptomState implements SymptomState {
  const factory _SymptomState(
      {required IList<SymptomModel> selectedSymptoms,
      required bool isLoading,
      required Option<Either<ResponseError, IList<SymptomModel>>>
          optionFailureOrSymptoms}) = _$_SymptomState;

  @override
  IList<SymptomModel> get selectedSymptoms;
  @override
  bool get isLoading;
  @override
  Option<Either<ResponseError, IList<SymptomModel>>>
      get optionFailureOrSymptoms;
  @override
  @JsonKey(ignore: true)
  _$SymptomStateCopyWith<_SymptomState> get copyWith =>
      throw _privateConstructorUsedError;
}
