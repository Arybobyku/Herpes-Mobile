// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'case_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaseDetailModel _$CaseDetailModelFromJson(Map<String, dynamic> json) {
  return _CaseDetailModel.fromJson(json);
}

/// @nodoc
class _$CaseDetailModelTearOff {
  const _$CaseDetailModelTearOff();

  _CaseDetailModel call(
      {@JsonKey(name: "weight") required int weight,
      @JsonKey(name: "sympthons") required SymptomModel sympthons}) {
    return _CaseDetailModel(
      weight: weight,
      sympthons: sympthons,
    );
  }

  CaseDetailModel fromJson(Map<String, Object?> json) {
    return CaseDetailModel.fromJson(json);
  }
}

/// @nodoc
const $CaseDetailModel = _$CaseDetailModelTearOff();

/// @nodoc
mixin _$CaseDetailModel {
  @JsonKey(name: "weight")
  int get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "sympthons")
  SymptomModel get sympthons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseDetailModelCopyWith<CaseDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseDetailModelCopyWith<$Res> {
  factory $CaseDetailModelCopyWith(
          CaseDetailModel value, $Res Function(CaseDetailModel) then) =
      _$CaseDetailModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "weight") int weight,
      @JsonKey(name: "sympthons") SymptomModel sympthons});

  $SymptomModelCopyWith<$Res> get sympthons;
}

/// @nodoc
class _$CaseDetailModelCopyWithImpl<$Res>
    implements $CaseDetailModelCopyWith<$Res> {
  _$CaseDetailModelCopyWithImpl(this._value, this._then);

  final CaseDetailModel _value;
  // ignore: unused_field
  final $Res Function(CaseDetailModel) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? sympthons = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sympthons: sympthons == freezed
          ? _value.sympthons
          : sympthons // ignore: cast_nullable_to_non_nullable
              as SymptomModel,
    ));
  }

  @override
  $SymptomModelCopyWith<$Res> get sympthons {
    return $SymptomModelCopyWith<$Res>(_value.sympthons, (value) {
      return _then(_value.copyWith(sympthons: value));
    });
  }
}

/// @nodoc
abstract class _$CaseDetailModelCopyWith<$Res>
    implements $CaseDetailModelCopyWith<$Res> {
  factory _$CaseDetailModelCopyWith(
          _CaseDetailModel value, $Res Function(_CaseDetailModel) then) =
      __$CaseDetailModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "weight") int weight,
      @JsonKey(name: "sympthons") SymptomModel sympthons});

  @override
  $SymptomModelCopyWith<$Res> get sympthons;
}

/// @nodoc
class __$CaseDetailModelCopyWithImpl<$Res>
    extends _$CaseDetailModelCopyWithImpl<$Res>
    implements _$CaseDetailModelCopyWith<$Res> {
  __$CaseDetailModelCopyWithImpl(
      _CaseDetailModel _value, $Res Function(_CaseDetailModel) _then)
      : super(_value, (v) => _then(v as _CaseDetailModel));

  @override
  _CaseDetailModel get _value => super._value as _CaseDetailModel;

  @override
  $Res call({
    Object? weight = freezed,
    Object? sympthons = freezed,
  }) {
    return _then(_CaseDetailModel(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      sympthons: sympthons == freezed
          ? _value.sympthons
          : sympthons // ignore: cast_nullable_to_non_nullable
              as SymptomModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaseDetailModel implements _CaseDetailModel {
  const _$_CaseDetailModel(
      {@JsonKey(name: "weight") required this.weight,
      @JsonKey(name: "sympthons") required this.sympthons});

  factory _$_CaseDetailModel.fromJson(Map<String, dynamic> json) =>
      _$$_CaseDetailModelFromJson(json);

  @override
  @JsonKey(name: "weight")
  final int weight;
  @override
  @JsonKey(name: "sympthons")
  final SymptomModel sympthons;

  @override
  String toString() {
    return 'CaseDetailModel(weight: $weight, sympthons: $sympthons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CaseDetailModel &&
            const DeepCollectionEquality().equals(other.weight, weight) &&
            const DeepCollectionEquality().equals(other.sympthons, sympthons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weight),
      const DeepCollectionEquality().hash(sympthons));

  @JsonKey(ignore: true)
  @override
  _$CaseDetailModelCopyWith<_CaseDetailModel> get copyWith =>
      __$CaseDetailModelCopyWithImpl<_CaseDetailModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaseDetailModelToJson(this);
  }
}

abstract class _CaseDetailModel implements CaseDetailModel {
  const factory _CaseDetailModel(
          {@JsonKey(name: "weight") required int weight,
          @JsonKey(name: "sympthons") required SymptomModel sympthons}) =
      _$_CaseDetailModel;

  factory _CaseDetailModel.fromJson(Map<String, dynamic> json) =
      _$_CaseDetailModel.fromJson;

  @override
  @JsonKey(name: "weight")
  int get weight;
  @override
  @JsonKey(name: "sympthons")
  SymptomModel get sympthons;
  @override
  @JsonKey(ignore: true)
  _$CaseDetailModelCopyWith<_CaseDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}
