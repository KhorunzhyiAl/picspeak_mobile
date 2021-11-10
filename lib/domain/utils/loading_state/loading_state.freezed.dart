// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoadingStateTearOff {
  const _$LoadingStateTearOff();

  Loading<T> loading<T>() {
    return Loading<T>();
  }

  Ready<T> ready<T>(T data) {
    return Ready<T>(
      data,
    );
  }

  Failed<T> failed<T>([String message = '']) {
    return Failed<T>(
      message,
    );
  }
}

/// @nodoc
const $LoadingState = _$LoadingStateTearOff();

/// @nodoc
mixin _$LoadingState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) ready,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  final LoadingState<T> _value;
  // ignore: unused_field
  final $Res Function(LoadingState<T>) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res> extends _$LoadingStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'LoadingState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) ready,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements LoadingState<T> {
  const factory Loading() = _$Loading<T>;
}

/// @nodoc
abstract class $ReadyCopyWith<T, $Res> {
  factory $ReadyCopyWith(Ready<T> value, $Res Function(Ready<T>) then) =
      _$ReadyCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$ReadyCopyWithImpl<T, $Res> extends _$LoadingStateCopyWithImpl<T, $Res>
    implements $ReadyCopyWith<T, $Res> {
  _$ReadyCopyWithImpl(Ready<T> _value, $Res Function(Ready<T>) _then)
      : super(_value, (v) => _then(v as Ready<T>));

  @override
  Ready<T> get _value => super._value as Ready<T>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Ready<T>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Ready<T> implements Ready<T> {
  const _$Ready(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'LoadingState<$T>.ready(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ready<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $ReadyCopyWith<T, Ready<T>> get copyWith =>
      _$ReadyCopyWithImpl<T, Ready<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) ready,
    required TResult Function(String message) failed,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready<T> implements LoadingState<T> {
  const factory Ready(T data) = _$Ready<T>;

  T get data;
  @JsonKey(ignore: true)
  $ReadyCopyWith<T, Ready<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailedCopyWith<T, $Res> {
  factory $FailedCopyWith(Failed<T> value, $Res Function(Failed<T>) then) =
      _$FailedCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailedCopyWithImpl<T, $Res> extends _$LoadingStateCopyWithImpl<T, $Res>
    implements $FailedCopyWith<T, $Res> {
  _$FailedCopyWithImpl(Failed<T> _value, $Res Function(Failed<T>) _then)
      : super(_value, (v) => _then(v as Failed<T>));

  @override
  Failed<T> get _value => super._value as Failed<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(Failed<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failed<T> implements Failed<T> {
  const _$Failed([this.message = '']);

  @JsonKey(defaultValue: '')
  @override
  final String message;

  @override
  String toString() {
    return 'LoadingState<$T>.failed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failed<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $FailedCopyWith<T, Failed<T>> get copyWith =>
      _$FailedCopyWithImpl<T, Failed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) ready,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? ready,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<T> implements LoadingState<T> {
  const factory Failed([String message]) = _$Failed<T>;

  String get message;
  @JsonKey(ignore: true)
  $FailedCopyWith<T, Failed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
