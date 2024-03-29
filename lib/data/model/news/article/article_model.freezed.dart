// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticleModel _$ArticleModelFromJson(Map<String, dynamic> json) {
  return _ArticleModel.fromJson(json);
}

/// @nodoc
class _$ArticleModelTearOff {
  const _$ArticleModelTearOff();

  _ArticleModel call(
      {String? author,
      required String title,
      required String url,
      required String description,
      required String urlToImage,
      required String publishedAt}) {
    return _ArticleModel(
      author: author,
      title: title,
      url: url,
      description: description,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
    );
  }

  ArticleModel fromJson(Map<String, Object?> json) {
    return ArticleModel.fromJson(json);
  }
}

/// @nodoc
const $ArticleModel = _$ArticleModelTearOff();

/// @nodoc
mixin _$ArticleModel {
  String? get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleModelCopyWith<ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleModelCopyWith<$Res> {
  factory $ArticleModelCopyWith(
          ArticleModel value, $Res Function(ArticleModel) then) =
      _$ArticleModelCopyWithImpl<$Res>;
  $Res call(
      {String? author,
      String title,
      String url,
      String description,
      String urlToImage,
      String publishedAt});
}

/// @nodoc
class _$ArticleModelCopyWithImpl<$Res> implements $ArticleModelCopyWith<$Res> {
  _$ArticleModelCopyWithImpl(this._value, this._then);

  final ArticleModel _value;
  // ignore: unused_field
  final $Res Function(ArticleModel) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ArticleModelCopyWith<$Res>
    implements $ArticleModelCopyWith<$Res> {
  factory _$ArticleModelCopyWith(
          _ArticleModel value, $Res Function(_ArticleModel) then) =
      __$ArticleModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? author,
      String title,
      String url,
      String description,
      String urlToImage,
      String publishedAt});
}

/// @nodoc
class __$ArticleModelCopyWithImpl<$Res> extends _$ArticleModelCopyWithImpl<$Res>
    implements _$ArticleModelCopyWith<$Res> {
  __$ArticleModelCopyWithImpl(
      _ArticleModel _value, $Res Function(_ArticleModel) _then)
      : super(_value, (v) => _then(v as _ArticleModel));

  @override
  _ArticleModel get _value => super._value as _ArticleModel;

  @override
  $Res call({
    Object? author = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? description = freezed,
    Object? urlToImage = freezed,
    Object? publishedAt = freezed,
  }) {
    return _then(_ArticleModel(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: urlToImage == freezed
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticleModel implements _ArticleModel {
  const _$_ArticleModel(
      {this.author,
      required this.title,
      required this.url,
      required this.description,
      required this.urlToImage,
      required this.publishedAt});

  factory _$_ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$$_ArticleModelFromJson(json);

  @override
  final String? author;
  @override
  final String title;
  @override
  final String url;
  @override
  final String description;
  @override
  final String urlToImage;
  @override
  final String publishedAt;

  @override
  String toString() {
    return 'ArticleModel(author: $author, title: $title, url: $url, description: $description, urlToImage: $urlToImage, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleModel &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.urlToImage, urlToImage) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(urlToImage),
      const DeepCollectionEquality().hash(publishedAt));

  @JsonKey(ignore: true)
  @override
  _$ArticleModelCopyWith<_ArticleModel> get copyWith =>
      __$ArticleModelCopyWithImpl<_ArticleModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticleModelToJson(this);
  }
}

abstract class _ArticleModel implements ArticleModel {
  const factory _ArticleModel(
      {String? author,
      required String title,
      required String url,
      required String description,
      required String urlToImage,
      required String publishedAt}) = _$_ArticleModel;

  factory _ArticleModel.fromJson(Map<String, dynamic> json) =
      _$_ArticleModel.fromJson;

  @override
  String? get author;
  @override
  String get title;
  @override
  String get url;
  @override
  String get description;
  @override
  String get urlToImage;
  @override
  String get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$ArticleModelCopyWith<_ArticleModel> get copyWith =>
      throw _privateConstructorUsedError;
}
