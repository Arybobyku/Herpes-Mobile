// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cbr_and_rbr_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CbrAndRbrEventTearOff {
  const _$CbrAndRbrEventTearOff();

  _Calculated calculated(
      {required IList<CaseModel> cases,
      required IList<SymptomModel> symptoms}) {
    return _Calculated(
      cases: cases,
      symptoms: symptoms,
    );
  }
}

/// @nodoc
const $CbrAndRbrEvent = _$CbrAndRbrEventTearOff();

/// @nodoc
mixin _$CbrAndRbrEvent {
  IList<CaseModel> get cases => throw _privateConstructorUsedError;
  IList<SymptomModel> get symptoms => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IList<CaseModel> cases, IList<SymptomModel> symptoms)
        calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(IList<CaseModel> cases, IList<SymptomModel> symptoms)?
        calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IList<CaseModel> cases, IList<SymptomModel> symptoms)?
        calculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Calculated value) calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Calculated value)? calculated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CbrAndRbrEventCopyWith<CbrAndRbrEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CbrAndRbrEventCopyWith<$Res> {
  factory $CbrAndRbrEventCopyWith(
          CbrAndRbrEvent value, $Res Function(CbrAndRbrEvent) then) =
      _$CbrAndRbrEventCopyWithImpl<$Res>;
  $Res call({IList<CaseModel> cases, IList<SymptomModel> symptoms});
}

/// @nodoc
class _$CbrAndRbrEventCopyWithImpl<$Res>
    implements $CbrAndRbrEventCopyWith<$Res> {
  _$CbrAndRbrEventCopyWithImpl(this._value, this._then);

  final CbrAndRbrEvent _value;
  // ignore: unused_field
  final $Res Function(CbrAndRbrEvent) _then;

  @override
  $Res call({
    Object? cases = freezed,
    Object? symptoms = freezed,
  }) {
    return _then(_value.copyWith(
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as IList<CaseModel>,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as IList<SymptomModel>,
    ));
  }
}

/// @nodoc
abstract class _$CalculatedCopyWith<$Res>
    implements $CbrAndRbrEventCopyWith<$Res> {
  factory _$CalculatedCopyWith(
          _Calculated value, $Res Function(_Calculated) then) =
      __$CalculatedCopyWithImpl<$Res>;
  @override
  $Res call({IList<CaseModel> cases, IList<SymptomModel> symptoms});
}

/// @nodoc
class __$CalculatedCopyWithImpl<$Res> extends _$CbrAndRbrEventCopyWithImpl<$Res>
    implements _$CalculatedCopyWith<$Res> {
  __$CalculatedCopyWithImpl(
      _Calculated _value, $Res Function(_Calculated) _then)
      : super(_value, (v) => _then(v as _Calculated));

  @override
  _Calculated get _value => super._value as _Calculated;

  @override
  $Res call({
    Object? cases = freezed,
    Object? symptoms = freezed,
  }) {
    return _then(_Calculated(
      cases: cases == freezed
          ? _value.cases
          : cases // ignore: cast_nullable_to_non_nullable
              as IList<CaseModel>,
      symptoms: symptoms == freezed
          ? _value.symptoms
          : symptoms // ignore: cast_nullable_to_non_nullable
              as IList<SymptomModel>,
    ));
  }
}

/// @nodoc

class _$_Calculated implements _Calculated {
  const _$_Calculated({required this.cases, required this.symptoms});

  @override
  final IList<CaseModel> cases;
  @override
  final IList<SymptomModel> symptoms;

  @override
  String toString() {
    return 'CbrAndRbrEvent.calculated(cases: $cases, symptoms: $symptoms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Calculated &&
            const DeepCollectionEquality().equals(other.cases, cases) &&
            const DeepCollectionEquality().equals(other.symptoms, symptoms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cases),
      const DeepCollectionEquality().hash(symptoms));

  @JsonKey(ignore: true)
  @override
  _$CalculatedCopyWith<_Calculated> get copyWith =>
      __$CalculatedCopyWithImpl<_Calculated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            IList<CaseModel> cases, IList<SymptomModel> symptoms)
        calculated,
  }) {
    return calculated(cases, symptoms);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(IList<CaseModel> cases, IList<SymptomModel> symptoms)?
        calculated,
  }) {
    return calculated?.call(cases, symptoms);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IList<CaseModel> cases, IList<SymptomModel> symptoms)?
        calculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(cases, symptoms);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Calculated value) calculated,
  }) {
    return calculated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Calculated value)? calculated,
  }) {
    return calculated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Calculated value)? calculated,
    required TResult orElse(),
  }) {
    if (calculated != null) {
      return calculated(this);
    }
    return orElse();
  }
}

abstract class _Calculated implements CbrAndRbrEvent {
  const factory _Calculated(
      {required IList<CaseModel> cases,
      required IList<SymptomModel> symptoms}) = _$_Calculated;

  @override
  IList<CaseModel> get cases;
  @override
  IList<SymptomModel> get symptoms;
  @override
  @JsonKey(ignore: true)
  _$CalculatedCopyWith<_Calculated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CbrAndRbrStateTearOff {
  const _$CbrAndRbrStateTearOff();

  _CbrAndRbrState call(
      {required CaseModel caseModel,
      required bool success,
      required double result}) {
    return _CbrAndRbrState(
      caseModel: caseModel,
      success: success,
      result: result,
    );
  }
}

/// @nodoc
const $CbrAndRbrState = _$CbrAndRbrStateTearOff();

/// @nodoc
mixin _$CbrAndRbrState {
  CaseModel get caseModel => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CbrAndRbrStateCopyWith<CbrAndRbrState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CbrAndRbrStateCopyWith<$Res> {
  factory $CbrAndRbrStateCopyWith(
          CbrAndRbrState value, $Res Function(CbrAndRbrState) then) =
      _$CbrAndRbrStateCopyWithImpl<$Res>;
  $Res call({CaseModel caseModel, bool success, double result});

  $CaseModelCopyWith<$Res> get caseModel;
}

/// @nodoc
class _$CbrAndRbrStateCopyWithImpl<$Res>
    implements $CbrAndRbrStateCopyWith<$Res> {
  _$CbrAndRbrStateCopyWithImpl(this._value, this._then);

  final CbrAndRbrState _value;
  // ignore: unused_field
  final $Res Function(CbrAndRbrState) _then;

  @override
  $Res call({
    Object? caseModel = freezed,
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      caseModel: caseModel == freezed
          ? _value.caseModel
          : caseModel // ignore: cast_nullable_to_non_nullable
              as CaseModel,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $CaseModelCopyWith<$Res> get caseModel {
    return $CaseModelCopyWith<$Res>(_value.caseModel, (value) {
      return _then(_value.copyWith(caseModel: value));
    });
  }
}

/// @nodoc
abstract class _$CbrAndRbrStateCopyWith<$Res>
    implements $CbrAndRbrStateCopyWith<$Res> {
  factory _$CbrAndRbrStateCopyWith(
          _CbrAndRbrState value, $Res Function(_CbrAndRbrState) then) =
      __$CbrAndRbrStateCopyWithImpl<$Res>;
  @override
  $Res call({CaseModel caseModel, bool success, double result});

  @override
  $CaseModelCopyWith<$Res> get caseModel;
}

/// @nodoc
class __$CbrAndRbrStateCopyWithImpl<$Res>
    extends _$CbrAndRbrStateCopyWithImpl<$Res>
    implements _$CbrAndRbrStateCopyWith<$Res> {
  __$CbrAndRbrStateCopyWithImpl(
      _CbrAndRbrState _value, $Res Function(_CbrAndRbrState) _then)
      : super(_value, (v) => _then(v as _CbrAndRbrState));

  @override
  _CbrAndRbrState get _value => super._value as _CbrAndRbrState;

  @override
  $Res call({
    Object? caseModel = freezed,
    Object? success = freezed,
    Object? result = freezed,
  }) {
    return _then(_CbrAndRbrState(
      caseModel: caseModel == freezed
          ? _value.caseModel
          : caseModel // ignore: cast_nullable_to_non_nullable
              as CaseModel,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CbrAndRbrState implements _CbrAndRbrState {
  const _$_CbrAndRbrState(
      {required this.caseModel, required this.success, required this.result});

  @override
  final CaseModel caseModel;
  @override
  final bool success;
  @override
  final double result;

  @override
  String toString() {
    return 'CbrAndRbrState(caseModel: $caseModel, success: $success, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CbrAndRbrState &&
            const DeepCollectionEquality().equals(other.caseModel, caseModel) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caseModel),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  _$CbrAndRbrStateCopyWith<_CbrAndRbrState> get copyWith =>
      __$CbrAndRbrStateCopyWithImpl<_CbrAndRbrState>(this, _$identity);
}

abstract class _CbrAndRbrState implements CbrAndRbrState {
  const factory _CbrAndRbrState(
      {required CaseModel caseModel,
      required bool success,
      required double result}) = _$_CbrAndRbrState;

  @override
  CaseModel get caseModel;
  @override
  bool get success;
  @override
  double get result;
  @override
  @JsonKey(ignore: true)
  _$CbrAndRbrStateCopyWith<_CbrAndRbrState> get copyWith =>
      throw _privateConstructorUsedError;
}
