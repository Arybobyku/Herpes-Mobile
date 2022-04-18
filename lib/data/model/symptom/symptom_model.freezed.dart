// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'symptom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SymptomModel _$SymptomModelFromJson(Map<String, dynamic> json) {
  return _SymptomModel.fromJson(json);
}

/// @nodoc
class _$SymptomModelTearOff {
  const _$SymptomModelTearOff();

  _SymptomModel call(
      {required int id,
      @JsonKey(name: "sympthon_name") required String name,
      bool? isSelect}) {
    return _SymptomModel(
      id: id,
      name: name,
      isSelect: isSelect,
    );
  }

  SymptomModel fromJson(Map<String, Object?> json) {
    return SymptomModel.fromJson(json);
  }
}

/// @nodoc
const $SymptomModel = _$SymptomModelTearOff();

/// @nodoc
mixin _$SymptomModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "sympthon_name")
  String get name => throw _privateConstructorUsedError;
  bool? get isSelect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymptomModelCopyWith<SymptomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymptomModelCopyWith<$Res> {
  factory $SymptomModelCopyWith(
          SymptomModel value, $Res Function(SymptomModel) then) =
      _$SymptomModelCopyWithImpl<$Res>;
  $Res call(
      {int id, @JsonKey(name: "sympthon_name") String name, bool? isSelect});
}

/// @nodoc
class _$SymptomModelCopyWithImpl<$Res> implements $SymptomModelCopyWith<$Res> {
  _$SymptomModelCopyWithImpl(this._value, this._then);

  final SymptomModel _value;
  // ignore: unused_field
  final $Res Function(SymptomModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelect = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelect: isSelect == freezed
          ? _value.isSelect
          : isSelect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SymptomModelCopyWith<$Res>
    implements $SymptomModelCopyWith<$Res> {
  factory _$SymptomModelCopyWith(
          _SymptomModel value, $Res Function(_SymptomModel) then) =
      __$SymptomModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, @JsonKey(name: "sympthon_name") String name, bool? isSelect});
}

/// @nodoc
class __$SymptomModelCopyWithImpl<$Res> extends _$SymptomModelCopyWithImpl<$Res>
    implements _$SymptomModelCopyWith<$Res> {
  __$SymptomModelCopyWithImpl(
      _SymptomModel _value, $Res Function(_SymptomModel) _then)
      : super(_value, (v) => _then(v as _SymptomModel));

  @override
  _SymptomModel get _value => super._value as _SymptomModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isSelect = freezed,
  }) {
    return _then(_SymptomModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isSelect: isSelect == freezed
          ? _value.isSelect
          : isSelect // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SymptomModel implements _SymptomModel {
  const _$_SymptomModel(
      {required this.id,
      @JsonKey(name: "sympthon_name") required this.name,
      this.isSelect});

  factory _$_SymptomModel.fromJson(Map<String, dynamic> json) =>
      _$$_SymptomModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "sympthon_name")
  final String name;
  @override
  final bool? isSelect;

  @override
  String toString() {
    return 'SymptomModel(id: $id, name: $name, isSelect: $isSelect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SymptomModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.isSelect, isSelect));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(isSelect));

  @JsonKey(ignore: true)
  @override
  _$SymptomModelCopyWith<_SymptomModel> get copyWith =>
      __$SymptomModelCopyWithImpl<_SymptomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymptomModelToJson(this);
  }
}

abstract class _SymptomModel implements SymptomModel {
  const factory _SymptomModel(
      {required int id,
      @JsonKey(name: "sympthon_name") required String name,
      bool? isSelect}) = _$_SymptomModel;

  factory _SymptomModel.fromJson(Map<String, dynamic> json) =
      _$_SymptomModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "sympthon_name")
  String get name;
  @override
  bool? get isSelect;
  @override
  @JsonKey(ignore: true)
  _$SymptomModelCopyWith<_SymptomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
