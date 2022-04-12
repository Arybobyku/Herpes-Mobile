// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'landing_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LandingEventTearOff {
  const _$LandingEventTearOff();

  _OnChange onChange(int index) {
    return _OnChange(
      index,
    );
  }
}

/// @nodoc
const $LandingEvent = _$LandingEventTearOff();

/// @nodoc
mixin _$LandingEvent {
  int get index => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChange value) onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnChange value)? onChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingEventCopyWith<LandingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingEventCopyWith<$Res> {
  factory $LandingEventCopyWith(
          LandingEvent value, $Res Function(LandingEvent) then) =
      _$LandingEventCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$LandingEventCopyWithImpl<$Res> implements $LandingEventCopyWith<$Res> {
  _$LandingEventCopyWithImpl(this._value, this._then);

  final LandingEvent _value;
  // ignore: unused_field
  final $Res Function(LandingEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OnChangeCopyWith<$Res> implements $LandingEventCopyWith<$Res> {
  factory _$OnChangeCopyWith(_OnChange value, $Res Function(_OnChange) then) =
      __$OnChangeCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$OnChangeCopyWithImpl<$Res> extends _$LandingEventCopyWithImpl<$Res>
    implements _$OnChangeCopyWith<$Res> {
  __$OnChangeCopyWithImpl(_OnChange _value, $Res Function(_OnChange) _then)
      : super(_value, (v) => _then(v as _OnChange));

  @override
  _OnChange get _value => super._value as _OnChange;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_OnChange(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnChange implements _OnChange {
  const _$_OnChange(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'LandingEvent.onChange(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnChange &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$OnChangeCopyWith<_OnChange> get copyWith =>
      __$OnChangeCopyWithImpl<_OnChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) onChange,
  }) {
    return onChange(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int index)? onChange,
  }) {
    return onChange?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnChange value) onChange,
  }) {
    return onChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnChange value)? onChange,
  }) {
    return onChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnChange value)? onChange,
    required TResult orElse(),
  }) {
    if (onChange != null) {
      return onChange(this);
    }
    return orElse();
  }
}

abstract class _OnChange implements LandingEvent {
  const factory _OnChange(int index) = _$_OnChange;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$OnChangeCopyWith<_OnChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LandingStateTearOff {
  const _$LandingStateTearOff();

  _LandingState call({required int index}) {
    return _LandingState(
      index: index,
    );
  }
}

/// @nodoc
const $LandingState = _$LandingStateTearOff();

/// @nodoc
mixin _$LandingState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LandingStateCopyWith<LandingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LandingStateCopyWith<$Res> {
  factory $LandingStateCopyWith(
          LandingState value, $Res Function(LandingState) then) =
      _$LandingStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$LandingStateCopyWithImpl<$Res> implements $LandingStateCopyWith<$Res> {
  _$LandingStateCopyWithImpl(this._value, this._then);

  final LandingState _value;
  // ignore: unused_field
  final $Res Function(LandingState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$LandingStateCopyWith<$Res>
    implements $LandingStateCopyWith<$Res> {
  factory _$LandingStateCopyWith(
          _LandingState value, $Res Function(_LandingState) then) =
      __$LandingStateCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$LandingStateCopyWithImpl<$Res> extends _$LandingStateCopyWithImpl<$Res>
    implements _$LandingStateCopyWith<$Res> {
  __$LandingStateCopyWithImpl(
      _LandingState _value, $Res Function(_LandingState) _then)
      : super(_value, (v) => _then(v as _LandingState));

  @override
  _LandingState get _value => super._value as _LandingState;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_LandingState(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LandingState implements _LandingState {
  const _$_LandingState({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'LandingState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LandingState &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$LandingStateCopyWith<_LandingState> get copyWith =>
      __$LandingStateCopyWithImpl<_LandingState>(this, _$identity);
}

abstract class _LandingState implements LandingState {
  const factory _LandingState({required int index}) = _$_LandingState;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$LandingStateCopyWith<_LandingState> get copyWith =>
      throw _privateConstructorUsedError;
}
