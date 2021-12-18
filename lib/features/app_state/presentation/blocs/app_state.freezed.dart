// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LocalDataLoaded localDataLoaded() {
    return const _LocalDataLoaded();
  }

  _Offline offline() {
    return const _Offline();
  }

  _Online online({AuthState authState = const AuthState.guest()}) {
    return _Online(
      authState: authState,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() localDataLoaded,
    required TResult Function() offline,
    required TResult Function(AuthState authState) online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() localDataLoaded,
    required TResult Function() offline,
    required TResult Function(AuthState authState) online,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LocalDataLoadedCopyWith<$Res> {
  factory _$LocalDataLoadedCopyWith(
          _LocalDataLoaded value, $Res Function(_LocalDataLoaded) then) =
      __$LocalDataLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocalDataLoadedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$LocalDataLoadedCopyWith<$Res> {
  __$LocalDataLoadedCopyWithImpl(
      _LocalDataLoaded _value, $Res Function(_LocalDataLoaded) _then)
      : super(_value, (v) => _then(v as _LocalDataLoaded));

  @override
  _LocalDataLoaded get _value => super._value as _LocalDataLoaded;
}

/// @nodoc

class _$_LocalDataLoaded implements _LocalDataLoaded {
  const _$_LocalDataLoaded();

  @override
  String toString() {
    return 'AppState.localDataLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LocalDataLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() localDataLoaded,
    required TResult Function() offline,
    required TResult Function(AuthState authState) online,
  }) {
    return localDataLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
  }) {
    return localDataLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
    required TResult orElse(),
  }) {
    if (localDataLoaded != null) {
      return localDataLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
  }) {
    return localDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
  }) {
    return localDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    required TResult orElse(),
  }) {
    if (localDataLoaded != null) {
      return localDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _LocalDataLoaded implements AppState {
  const factory _LocalDataLoaded() = _$_LocalDataLoaded;
}

/// @nodoc
abstract class _$OfflineCopyWith<$Res> {
  factory _$OfflineCopyWith(_Offline value, $Res Function(_Offline) then) =
      __$OfflineCopyWithImpl<$Res>;
}

/// @nodoc
class __$OfflineCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$OfflineCopyWith<$Res> {
  __$OfflineCopyWithImpl(_Offline _value, $Res Function(_Offline) _then)
      : super(_value, (v) => _then(v as _Offline));

  @override
  _Offline get _value => super._value as _Offline;
}

/// @nodoc

class _$_Offline implements _Offline {
  const _$_Offline();

  @override
  String toString() {
    return 'AppState.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Offline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() localDataLoaded,
    required TResult Function() offline,
    required TResult Function(AuthState authState) online,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements AppState {
  const factory _Offline() = _$_Offline;
}

/// @nodoc
abstract class _$OnlineCopyWith<$Res> {
  factory _$OnlineCopyWith(_Online value, $Res Function(_Online) then) =
      __$OnlineCopyWithImpl<$Res>;
  $Res call({AuthState authState});

  $AuthStateCopyWith<$Res> get authState;
}

/// @nodoc
class __$OnlineCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$OnlineCopyWith<$Res> {
  __$OnlineCopyWithImpl(_Online _value, $Res Function(_Online) _then)
      : super(_value, (v) => _then(v as _Online));

  @override
  _Online get _value => super._value as _Online;

  @override
  $Res call({
    Object? authState = freezed,
  }) {
    return _then(_Online(
      authState: authState == freezed
          ? _value.authState
          : authState // ignore: cast_nullable_to_non_nullable
              as AuthState,
    ));
  }

  @override
  $AuthStateCopyWith<$Res> get authState {
    return $AuthStateCopyWith<$Res>(_value.authState, (value) {
      return _then(_value.copyWith(authState: value));
    });
  }
}

/// @nodoc

class _$_Online implements _Online {
  const _$_Online({this.authState = const AuthState.guest()});

  @JsonKey(defaultValue: const AuthState.guest())
  @override
  final AuthState authState;

  @override
  String toString() {
    return 'AppState.online(authState: $authState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Online &&
            (identical(other.authState, authState) ||
                other.authState == authState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authState);

  @JsonKey(ignore: true)
  @override
  _$OnlineCopyWith<_Online> get copyWith =>
      __$OnlineCopyWithImpl<_Online>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() localDataLoaded,
    required TResult Function() offline,
    required TResult Function(AuthState authState) online,
  }) {
    return online(authState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
  }) {
    return online?.call(authState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? localDataLoaded,
    TResult Function()? offline,
    TResult Function(AuthState authState)? online,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(authState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Online value) online,
  }) {
    return online(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
  }) {
    return online?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Offline value)? offline,
    TResult Function(_Online value)? online,
    required TResult orElse(),
  }) {
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class _Online implements AppState {
  const factory _Online({AuthState authState}) = _$_Online;

  AuthState get authState;
  @JsonKey(ignore: true)
  _$OnlineCopyWith<_Online> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _Unauthenticated guest({bool requestAuth = false}) {
    return _Unauthenticated(
      requestAuth: requestAuth,
    );
  }

  _Authenticated authenticated() {
    return const _Authenticated();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool requestAuth) guest,
    required TResult Function() authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool requestAuth)? guest,
    TResult Function()? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool requestAuth)? guest,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) guest,
    required TResult Function(_Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? guest,
    TResult Function(_Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? guest,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
  $Res call({bool requestAuth});
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;

  @override
  $Res call({
    Object? requestAuth = freezed,
  }) {
    return _then(_Unauthenticated(
      requestAuth: requestAuth == freezed
          ? _value.requestAuth
          : requestAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated({this.requestAuth = false});

  @JsonKey(defaultValue: false)
  @override
  final bool requestAuth;

  @override
  String toString() {
    return 'AuthState.guest(requestAuth: $requestAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unauthenticated &&
            (identical(other.requestAuth, requestAuth) ||
                other.requestAuth == requestAuth));
  }

  @override
  int get hashCode => Object.hash(runtimeType, requestAuth);

  @JsonKey(ignore: true)
  @override
  _$UnauthenticatedCopyWith<_Unauthenticated> get copyWith =>
      __$UnauthenticatedCopyWithImpl<_Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool requestAuth) guest,
    required TResult Function() authenticated,
  }) {
    return guest(requestAuth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool requestAuth)? guest,
    TResult Function()? authenticated,
  }) {
    return guest?.call(requestAuth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool requestAuth)? guest,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(requestAuth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) guest,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return guest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? guest,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return guest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? guest,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (guest != null) {
      return guest(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated({bool requestAuth}) = _$_Unauthenticated;

  bool get requestAuth;
  @JsonKey(ignore: true)
  _$UnauthenticatedCopyWith<_Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool requestAuth) guest,
    required TResult Function() authenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool requestAuth)? guest,
    TResult Function()? authenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool requestAuth)? guest,
    TResult Function()? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unauthenticated value) guest,
    required TResult Function(_Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? guest,
    TResult Function(_Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unauthenticated value)? guest,
    TResult Function(_Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}
