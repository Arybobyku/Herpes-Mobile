// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'case_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CaseModelTearOff {
  const _$CaseModelTearOff();

  _CaseModel call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "confidence_level") int? confidenceLevel,
      @JsonKey(name: "age") int? age,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "disease") DiseaseModel? disease,
      @JsonKey(name: "cases_pivots") List<CaseDetailModel>? caseDetails,
      @JsonKey(name: "solutions") List<CaseSolutionModel>? caseSolutions}) {
    return _CaseModel(
      id: id,
      confidenceLevel: confidenceLevel,
      age: age,
      gender: gender,
      disease: disease,
      caseDetails: caseDetails,
      caseSolutions: caseSolutions,
    );
  }

  CaseModel fromJson(Map<String, Object?> json) {
    return CaseModel.fromJson(json);
  }
}

/// @nodoc
const $CaseModel = _$CaseModelTearOff();

/// @nodoc
mixin _$CaseModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "confidence_level")
  int? get confidenceLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "age")
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "disease")
  DiseaseModel? get disease => throw _privateConstructorUsedError;
  @JsonKey(name: "cases_pivots")
  List<CaseDetailModel>? get caseDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "solutions")
  List<CaseSolutionModel>? get caseSolutions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseModelCopyWith<CaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseModelCopyWith<$Res> {
  factory $CaseModelCopyWith(CaseModel value, $Res Function(CaseModel) then) =
      _$CaseModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "confidence_level") int? confidenceLevel,
      @JsonKey(name: "age") int? age,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "disease") DiseaseModel? disease,
      @JsonKey(name: "cases_pivots") List<CaseDetailModel>? caseDetails,
      @JsonKey(name: "solutions") List<CaseSolutionModel>? caseSolutions});
}

/// @nodoc
class _$CaseModelCopyWithImpl<$Res> implements $CaseModelCopyWith<$Res> {
  _$CaseModelCopyWithImpl(this._value, this._then);

  final CaseModel _value;
  // ignore: unused_field
  final $Res Function(CaseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? confidenceLevel = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? disease = freezed,
    Object? caseDetails = freezed,
    Object? caseSolutions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      confidenceLevel: confidenceLevel == freezed
          ? _value.confidenceLevel
          : confidenceLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      disease: disease == freezed
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as DiseaseModel?,
      caseDetails: caseDetails == freezed
          ? _value.caseDetails
          : caseDetails // ignore: cast_nullable_to_non_nullable
              as List<CaseDetailModel>?,
      caseSolutions: caseSolutions == freezed
          ? _value.caseSolutions
          : caseSolutions // ignore: cast_nullable_to_non_nullable
              as List<CaseSolutionModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CaseModelCopyWith<$Res> implements $CaseModelCopyWith<$Res> {
  factory _$CaseModelCopyWith(
          _CaseModel value, $Res Function(_CaseModel) then) =
      __$CaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "confidence_level") int? confidenceLevel,
      @JsonKey(name: "age") int? age,
      @JsonKey(name: "gender") String? gender,
      @JsonKey(name: "disease") DiseaseModel? disease,
      @JsonKey(name: "cases_pivots") List<CaseDetailModel>? caseDetails,
      @JsonKey(name: "solutions") List<CaseSolutionModel>? caseSolutions});
}

/// @nodoc
class __$CaseModelCopyWithImpl<$Res> extends _$CaseModelCopyWithImpl<$Res>
    implements _$CaseModelCopyWith<$Res> {
  __$CaseModelCopyWithImpl(_CaseModel _value, $Res Function(_CaseModel) _then)
      : super(_value, (v) => _then(v as _CaseModel));

  @override
  _CaseModel get _value => super._value as _CaseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? confidenceLevel = freezed,
    Object? age = freezed,
    Object? gender = freezed,
    Object? disease = freezed,
    Object? caseDetails = freezed,
    Object? caseSolutions = freezed,
  }) {
    return _then(_CaseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      confidenceLevel: confidenceLevel == freezed
          ? _value.confidenceLevel
          : confidenceLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      disease: disease == freezed
          ? _value.disease
          : disease // ignore: cast_nullable_to_non_nullable
              as DiseaseModel?,
      caseDetails: caseDetails == freezed
          ? _value.caseDetails
          : caseDetails // ignore: cast_nullable_to_non_nullable
              as List<CaseDetailModel>?,
      caseSolutions: caseSolutions == freezed
          ? _value.caseSolutions
          : caseSolutions // ignore: cast_nullable_to_non_nullable
              as List<CaseSolutionModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaseModel implements _CaseModel {
  const _$_CaseModel(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "confidence_level") this.confidenceLevel,
      @JsonKey(name: "age") this.age,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "disease") this.disease,
      @JsonKey(name: "cases_pivots") this.caseDetails,
      @JsonKey(name: "solutions") this.caseSolutions});

  factory _$_CaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_CaseModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "confidence_level")
  final int? confidenceLevel;
  @override
  @JsonKey(name: "age")
  final int? age;
  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "disease")
  final DiseaseModel? disease;
  @override
  @JsonKey(name: "cases_pivots")
  final List<CaseDetailModel>? caseDetails;
  @override
  @JsonKey(name: "solutions")
  final List<CaseSolutionModel>? caseSolutions;

  @override
  String toString() {
    return 'CaseModel(id: $id, confidenceLevel: $confidenceLevel, age: $age, gender: $gender, disease: $disease, caseDetails: $caseDetails, caseSolutions: $caseSolutions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CaseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.confidenceLevel, confidenceLevel) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.disease, disease) &&
            const DeepCollectionEquality()
                .equals(other.caseDetails, caseDetails) &&
            const DeepCollectionEquality()
                .equals(other.caseSolutions, caseSolutions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(confidenceLevel),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(disease),
      const DeepCollectionEquality().hash(caseDetails),
      const DeepCollectionEquality().hash(caseSolutions));

  @JsonKey(ignore: true)
  @override
  _$CaseModelCopyWith<_CaseModel> get copyWith =>
      __$CaseModelCopyWithImpl<_CaseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaseModelToJson(this);
  }
}

abstract class _CaseModel implements CaseModel {
  const factory _CaseModel(
          {@JsonKey(name: "id") int? id,
          @JsonKey(name: "confidence_level") int? confidenceLevel,
          @JsonKey(name: "age") int? age,
          @JsonKey(name: "gender") String? gender,
          @JsonKey(name: "disease") DiseaseModel? disease,
          @JsonKey(name: "cases_pivots") List<CaseDetailModel>? caseDetails,
          @JsonKey(name: "solutions") List<CaseSolutionModel>? caseSolutions}) =
      _$_CaseModel;

  factory _CaseModel.fromJson(Map<String, dynamic> json) =
      _$_CaseModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "confidence_level")
  int? get confidenceLevel;
  @override
  @JsonKey(name: "age")
  int? get age;
  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "disease")
  DiseaseModel? get disease;
  @override
  @JsonKey(name: "cases_pivots")
  List<CaseDetailModel>? get caseDetails;
  @override
  @JsonKey(name: "solutions")
  List<CaseSolutionModel>? get caseSolutions;
  @override
  @JsonKey(ignore: true)
  _$CaseModelCopyWith<_CaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
