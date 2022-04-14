// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news_response_collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsResponseCollection _$NewsResponseCollectionFromJson(
    Map<String, dynamic> json) {
  return _NewsResponseCollection.fromJson(json);
}

/// @nodoc
class _$NewsResponseCollectionTearOff {
  const _$NewsResponseCollectionTearOff();

  _NewsResponseCollection call(
      {required String status,
      required int totalResults,
      required ArticleModel articles}) {
    return _NewsResponseCollection(
      status: status,
      totalResults: totalResults,
      articles: articles,
    );
  }

  NewsResponseCollection fromJson(Map<String, Object?> json) {
    return NewsResponseCollection.fromJson(json);
  }
}

/// @nodoc
const $NewsResponseCollection = _$NewsResponseCollectionTearOff();

/// @nodoc
mixin _$NewsResponseCollection {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  ArticleModel get articles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsResponseCollectionCopyWith<NewsResponseCollection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseCollectionCopyWith<$Res> {
  factory $NewsResponseCollectionCopyWith(NewsResponseCollection value,
          $Res Function(NewsResponseCollection) then) =
      _$NewsResponseCollectionCopyWithImpl<$Res>;
  $Res call({String status, int totalResults, ArticleModel articles});

  $ArticleModelCopyWith<$Res> get articles;
}

/// @nodoc
class _$NewsResponseCollectionCopyWithImpl<$Res>
    implements $NewsResponseCollectionCopyWith<$Res> {
  _$NewsResponseCollectionCopyWithImpl(this._value, this._then);

  final NewsResponseCollection _value;
  // ignore: unused_field
  final $Res Function(NewsResponseCollection) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ));
  }

  @override
  $ArticleModelCopyWith<$Res> get articles {
    return $ArticleModelCopyWith<$Res>(_value.articles, (value) {
      return _then(_value.copyWith(articles: value));
    });
  }
}

/// @nodoc
abstract class _$NewsResponseCollectionCopyWith<$Res>
    implements $NewsResponseCollectionCopyWith<$Res> {
  factory _$NewsResponseCollectionCopyWith(_NewsResponseCollection value,
          $Res Function(_NewsResponseCollection) then) =
      __$NewsResponseCollectionCopyWithImpl<$Res>;
  @override
  $Res call({String status, int totalResults, ArticleModel articles});

  @override
  $ArticleModelCopyWith<$Res> get articles;
}

/// @nodoc
class __$NewsResponseCollectionCopyWithImpl<$Res>
    extends _$NewsResponseCollectionCopyWithImpl<$Res>
    implements _$NewsResponseCollectionCopyWith<$Res> {
  __$NewsResponseCollectionCopyWithImpl(_NewsResponseCollection _value,
      $Res Function(_NewsResponseCollection) _then)
      : super(_value, (v) => _then(v as _NewsResponseCollection));

  @override
  _NewsResponseCollection get _value => super._value as _NewsResponseCollection;

  @override
  $Res call({
    Object? status = freezed,
    Object? totalResults = freezed,
    Object? articles = freezed,
  }) {
    return _then(_NewsResponseCollection(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: totalResults == freezed
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as ArticleModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewsResponseCollection implements _NewsResponseCollection {
  const _$_NewsResponseCollection(
      {required this.status,
      required this.totalResults,
      required this.articles});

  factory _$_NewsResponseCollection.fromJson(Map<String, dynamic> json) =>
      _$$_NewsResponseCollectionFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  @override
  final ArticleModel articles;

  @override
  String toString() {
    return 'NewsResponseCollection(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsResponseCollection &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults) &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(totalResults),
      const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$NewsResponseCollectionCopyWith<_NewsResponseCollection> get copyWith =>
      __$NewsResponseCollectionCopyWithImpl<_NewsResponseCollection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsResponseCollectionToJson(this);
  }
}

abstract class _NewsResponseCollection implements NewsResponseCollection {
  const factory _NewsResponseCollection(
      {required String status,
      required int totalResults,
      required ArticleModel articles}) = _$_NewsResponseCollection;

  factory _NewsResponseCollection.fromJson(Map<String, dynamic> json) =
      _$_NewsResponseCollection.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  ArticleModel get articles;
  @override
  @JsonKey(ignore: true)
  _$NewsResponseCollectionCopyWith<_NewsResponseCollection> get copyWith =>
      throw _privateConstructorUsedError;
}
