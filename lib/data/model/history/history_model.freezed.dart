// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HistoryModel _$HistoryModelFromJson(Map<String, dynamic> json) {
  return _HistoryModel.fromJson(json);
}

/// @nodoc
class _$HistoryModelTearOff {
  const _$HistoryModelTearOff();

  _HistoryModel call(
      {required CaseModel caseModel,
      required bool success,
      required double result,
      required String date}) {
    return _HistoryModel(
      caseModel: caseModel,
      success: success,
      result: result,
      date: date,
    );
  }

  HistoryModel fromJson(Map<String, Object?> json) {
    return HistoryModel.fromJson(json);
  }
}

/// @nodoc
const $HistoryModel = _$HistoryModelTearOff();

/// @nodoc
mixin _$HistoryModel {
  CaseModel get caseModel => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  double get result => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryModelCopyWith<HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryModelCopyWith<$Res> {
  factory $HistoryModelCopyWith(
          HistoryModel value, $Res Function(HistoryModel) then) =
      _$HistoryModelCopyWithImpl<$Res>;
  $Res call({CaseModel caseModel, bool success, double result, String date});

  $CaseModelCopyWith<$Res> get caseModel;
}

/// @nodoc
class _$HistoryModelCopyWithImpl<$Res> implements $HistoryModelCopyWith<$Res> {
  _$HistoryModelCopyWithImpl(this._value, this._then);

  final HistoryModel _value;
  // ignore: unused_field
  final $Res Function(HistoryModel) _then;

  @override
  $Res call({
    Object? caseModel = freezed,
    Object? success = freezed,
    Object? result = freezed,
    Object? date = freezed,
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$HistoryModelCopyWith<$Res>
    implements $HistoryModelCopyWith<$Res> {
  factory _$HistoryModelCopyWith(
          _HistoryModel value, $Res Function(_HistoryModel) then) =
      __$HistoryModelCopyWithImpl<$Res>;
  @override
  $Res call({CaseModel caseModel, bool success, double result, String date});

  @override
  $CaseModelCopyWith<$Res> get caseModel;
}

/// @nodoc
class __$HistoryModelCopyWithImpl<$Res> extends _$HistoryModelCopyWithImpl<$Res>
    implements _$HistoryModelCopyWith<$Res> {
  __$HistoryModelCopyWithImpl(
      _HistoryModel _value, $Res Function(_HistoryModel) _then)
      : super(_value, (v) => _then(v as _HistoryModel));

  @override
  _HistoryModel get _value => super._value as _HistoryModel;

  @override
  $Res call({
    Object? caseModel = freezed,
    Object? success = freezed,
    Object? result = freezed,
    Object? date = freezed,
  }) {
    return _then(_HistoryModel(
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
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HistoryModel implements _HistoryModel {
  const _$_HistoryModel(
      {required this.caseModel,
      required this.success,
      required this.result,
      required this.date});

  factory _$_HistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_HistoryModelFromJson(json);

  @override
  final CaseModel caseModel;
  @override
  final bool success;
  @override
  final double result;
  @override
  final String date;

  @override
  String toString() {
    return 'HistoryModel(caseModel: $caseModel, success: $success, result: $result, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HistoryModel &&
            const DeepCollectionEquality().equals(other.caseModel, caseModel) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caseModel),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$HistoryModelCopyWith<_HistoryModel> get copyWith =>
      __$HistoryModelCopyWithImpl<_HistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HistoryModelToJson(this);
  }
}

abstract class _HistoryModel implements HistoryModel {
  const factory _HistoryModel(
      {required CaseModel caseModel,
      required bool success,
      required double result,
      required String date}) = _$_HistoryModel;

  factory _HistoryModel.fromJson(Map<String, dynamic> json) =
      _$_HistoryModel.fromJson;

  @override
  CaseModel get caseModel;
  @override
  bool get success;
  @override
  double get result;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$HistoryModelCopyWith<_HistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
