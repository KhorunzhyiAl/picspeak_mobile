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

  Loading<T> loading<T>({Option<T> cached = const None()}) {
    return Loading<T>(
      cached: cached,
    );
  }

  Ready<T> ready<T>(T data) {
    return Ready<T>(
      data,
    );
  }

  Failed<T> failed<T>([Failure failure = const Failure.empty()]) {
    return Failed<T>(
      failure,
    );
  }

  WaitingForConnection<T> waitingForConnection<T>(
      {Option<T> cached = const None()}) {
    return WaitingForConnection<T>(
      cached: cached,
    );
  }
}

/// @nodoc
const $LoadingState = _$LoadingStateTearOff();

/// @nodoc
mixin _$LoadingState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<T> cached) loading,
    required TResult Function(T data) ready,
    required TResult Function(Failure failure) failed,
    required TResult Function(Option<T> cached) waitingForConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(WaitingForConnection<T> value)
        waitingForConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
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
  $Res call({Option<T> cached});
}

/// @nodoc
class _$LoadingCopyWithImpl<T, $Res> extends _$LoadingStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;

  @override
  $Res call({
    Object? cached = freezed,
  }) {
    return _then(Loading<T>(
      cached: cached == freezed
          ? _value.cached
          : cached // ignore: cast_nullable_to_non_nullable
              as Option<T>,
    ));
  }
}

/// @nodoc

class _$Loading<T> implements Loading<T> {
  const _$Loading({this.cached = const None()});

  @JsonKey(defaultValue: const None())
  @override
  final Option<T> cached;

  @override
  String toString() {
    return 'LoadingState<$T>.loading(cached: $cached)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loading<T> &&
            (identical(other.cached, cached) || other.cached == cached));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cached);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<T, Loading<T>> get copyWith =>
      _$LoadingCopyWithImpl<T, Loading<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<T> cached) loading,
    required TResult Function(T data) ready,
    required TResult Function(Failure failure) failed,
    required TResult Function(Option<T> cached) waitingForConnection,
  }) {
    return loading(cached);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
  }) {
    return loading?.call(cached);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cached);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(WaitingForConnection<T> value)
        waitingForConnection,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements LoadingState<T> {
  const factory Loading({Option<T> cached}) = _$Loading<T>;

  Option<T> get cached;
  @JsonKey(ignore: true)
  $LoadingCopyWith<T, Loading<T>> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Option<T> cached) loading,
    required TResult Function(T data) ready,
    required TResult Function(Failure failure) failed,
    required TResult Function(Option<T> cached) waitingForConnection,
  }) {
    return ready(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
  }) {
    return ready?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
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
    required TResult Function(WaitingForConnection<T> value)
        waitingForConnection,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
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
  $Res call({Failure failure});
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
    Object? failure = freezed,
  }) {
    return _then(Failed<T>(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$Failed<T> implements Failed<T> {
  const _$Failed([this.failure = const Failure.empty()]);

  @JsonKey(defaultValue: const Failure.empty())
  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoadingState<$T>.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Failed<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  $FailedCopyWith<T, Failed<T>> get copyWith =>
      _$FailedCopyWithImpl<T, Failed<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<T> cached) loading,
    required TResult Function(T data) ready,
    required TResult Function(Failure failure) failed,
    required TResult Function(Option<T> cached) waitingForConnection,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(WaitingForConnection<T> value)
        waitingForConnection,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed<T> implements LoadingState<T> {
  const factory Failed([Failure failure]) = _$Failed<T>;

  Failure get failure;
  @JsonKey(ignore: true)
  $FailedCopyWith<T, Failed<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WaitingForConnectionCopyWith<T, $Res> {
  factory $WaitingForConnectionCopyWith(WaitingForConnection<T> value,
          $Res Function(WaitingForConnection<T>) then) =
      _$WaitingForConnectionCopyWithImpl<T, $Res>;
  $Res call({Option<T> cached});
}

/// @nodoc
class _$WaitingForConnectionCopyWithImpl<T, $Res>
    extends _$LoadingStateCopyWithImpl<T, $Res>
    implements $WaitingForConnectionCopyWith<T, $Res> {
  _$WaitingForConnectionCopyWithImpl(WaitingForConnection<T> _value,
      $Res Function(WaitingForConnection<T>) _then)
      : super(_value, (v) => _then(v as WaitingForConnection<T>));

  @override
  WaitingForConnection<T> get _value => super._value as WaitingForConnection<T>;

  @override
  $Res call({
    Object? cached = freezed,
  }) {
    return _then(WaitingForConnection<T>(
      cached: cached == freezed
          ? _value.cached
          : cached // ignore: cast_nullable_to_non_nullable
              as Option<T>,
    ));
  }
}

/// @nodoc

class _$WaitingForConnection<T> implements WaitingForConnection<T> {
  const _$WaitingForConnection({this.cached = const None()});

  @JsonKey(defaultValue: const None())
  @override
  final Option<T> cached;

  @override
  String toString() {
    return 'LoadingState<$T>.waitingForConnection(cached: $cached)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WaitingForConnection<T> &&
            (identical(other.cached, cached) || other.cached == cached));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cached);

  @JsonKey(ignore: true)
  @override
  $WaitingForConnectionCopyWith<T, WaitingForConnection<T>> get copyWith =>
      _$WaitingForConnectionCopyWithImpl<T, WaitingForConnection<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<T> cached) loading,
    required TResult Function(T data) ready,
    required TResult Function(Failure failure) failed,
    required TResult Function(Option<T> cached) waitingForConnection,
  }) {
    return waitingForConnection(cached);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
  }) {
    return waitingForConnection?.call(cached);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<T> cached)? loading,
    TResult Function(T data)? ready,
    TResult Function(Failure failure)? failed,
    TResult Function(Option<T> cached)? waitingForConnection,
    required TResult orElse(),
  }) {
    if (waitingForConnection != null) {
      return waitingForConnection(cached);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Ready<T> value) ready,
    required TResult Function(Failed<T> value) failed,
    required TResult Function(WaitingForConnection<T> value)
        waitingForConnection,
  }) {
    return waitingForConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
  }) {
    return waitingForConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading<T> value)? loading,
    TResult Function(Ready<T> value)? ready,
    TResult Function(Failed<T> value)? failed,
    TResult Function(WaitingForConnection<T> value)? waitingForConnection,
    required TResult orElse(),
  }) {
    if (waitingForConnection != null) {
      return waitingForConnection(this);
    }
    return orElse();
  }
}

abstract class WaitingForConnection<T> implements LoadingState<T> {
  const factory WaitingForConnection({Option<T> cached}) =
      _$WaitingForConnection<T>;

  Option<T> get cached;
  @JsonKey(ignore: true)
  $WaitingForConnectionCopyWith<T, WaitingForConnection<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
