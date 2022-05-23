// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'disease_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiseaseModel _$DiseaseModelFromJson(Map<String, dynamic> json) {
  return _DiseaseModel.fromJson(json);
}

/// @nodoc
class _$DiseaseModelTearOff {
  const _$DiseaseModelTearOff();

  _DiseaseModel call(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "disease_name") required String diseaseName,
      @JsonKey(name: "image") required String image}) {
    return _DiseaseModel(
      id: id,
      diseaseName: diseaseName,
      image: image,
    );
  }

  DiseaseModel fromJson(Map<String, Object?> json) {
    return DiseaseModel.fromJson(json);
  }
}

/// @nodoc
const $DiseaseModel = _$DiseaseModelTearOff();

/// @nodoc
mixin _$DiseaseModel {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "disease_name")
  String get diseaseName => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiseaseModelCopyWith<DiseaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiseaseModelCopyWith<$Res> {
  factory $DiseaseModelCopyWith(
          DiseaseModel value, $Res Function(DiseaseModel) then) =
      _$DiseaseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "disease_name") String diseaseName,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class _$DiseaseModelCopyWithImpl<$Res> implements $DiseaseModelCopyWith<$Res> {
  _$DiseaseModelCopyWithImpl(this._value, this._then);

  final DiseaseModel _value;
  // ignore: unused_field
  final $Res Function(DiseaseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? diseaseName = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      diseaseName: diseaseName == freezed
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiseaseModelCopyWith<$Res>
    implements $DiseaseModelCopyWith<$Res> {
  factory _$DiseaseModelCopyWith(
          _DiseaseModel value, $Res Function(_DiseaseModel) then) =
      __$DiseaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "disease_name") String diseaseName,
      @JsonKey(name: "image") String image});
}

/// @nodoc
class __$DiseaseModelCopyWithImpl<$Res> extends _$DiseaseModelCopyWithImpl<$Res>
    implements _$DiseaseModelCopyWith<$Res> {
  __$DiseaseModelCopyWithImpl(
      _DiseaseModel _value, $Res Function(_DiseaseModel) _then)
      : super(_value, (v) => _then(v as _DiseaseModel));

  @override
  _DiseaseModel get _value => super._value as _DiseaseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? diseaseName = freezed,
    Object? image = freezed,
  }) {
    return _then(_DiseaseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      diseaseName: diseaseName == freezed
          ? _value.diseaseName
          : diseaseName // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiseaseModel implements _DiseaseModel {
  const _$_DiseaseModel(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "disease_name") required this.diseaseName,
      @JsonKey(name: "image") required this.image});

  factory _$_DiseaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_DiseaseModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "disease_name")
  final String diseaseName;
  @override
  @JsonKey(name: "image")
  final String image;

  @override
  String toString() {
    return 'DiseaseModel(id: $id, diseaseName: $diseaseName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiseaseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.diseaseName, diseaseName) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(diseaseName),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$DiseaseModelCopyWith<_DiseaseModel> get copyWith =>
      __$DiseaseModelCopyWithImpl<_DiseaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiseaseModelToJson(this);
  }
}

abstract class _DiseaseModel implements DiseaseModel {
  const factory _DiseaseModel(
      {@JsonKey(name: "id") required int id,
      @JsonKey(name: "disease_name") required String diseaseName,
      @JsonKey(name: "image") required String image}) = _$_DiseaseModel;

  factory _DiseaseModel.fromJson(Map<String, dynamic> json) =
      _$_DiseaseModel.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "disease_name")
  String get diseaseName;
  @override
  @JsonKey(name: "image")
  String get image;
  @override
  @JsonKey(ignore: true)
  _$DiseaseModelCopyWith<_DiseaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
