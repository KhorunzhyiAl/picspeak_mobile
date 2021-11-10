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

  Empty empty() {
    return const Empty();
  }

  LocalDataLoaded localDataLoaded({required AppData appData}) {
    return LocalDataLoaded(
      appData: appData,
    );
  }

  Unauthenticated unauthenticated(
      {required AppData appData, required Dio dio}) {
    return Unauthenticated(
      appData: appData,
      dio: dio,
    );
  }

  Authenticated authenticated({required AppData appData, required Dio dio}) {
    return Authenticated(
      appData: appData,
      dio: dio,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(AppData appData) localDataLoaded,
    required TResult Function(AppData appData, Dio dio) unauthenticated,
    required TResult Function(AppData appData, Dio dio) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(LocalDataLoaded value) localDataLoaded,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
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
abstract class $EmptyCopyWith<$Res> {
  factory $EmptyCopyWith(Empty value, $Res Function(Empty) then) =
      _$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $EmptyCopyWith<$Res> {
  _$EmptyCopyWithImpl(Empty _value, $Res Function(Empty) _then)
      : super(_value, (v) => _then(v as Empty));

  @override
  Empty get _value => super._value as Empty;
}

/// @nodoc

class _$Empty extends Empty {
  const _$Empty() : super._();

  @override
  String toString() {
    return 'AppState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(AppData appData) localDataLoaded,
    required TResult Function(AppData appData, Dio dio) unauthenticated,
    required TResult Function(AppData appData, Dio dio) authenticated,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(LocalDataLoaded value) localDataLoaded,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty extends AppState {
  const factory Empty() = _$Empty;
  const Empty._() : super._();
}

/// @nodoc
abstract class $LocalDataLoadedCopyWith<$Res> {
  factory $LocalDataLoadedCopyWith(
          LocalDataLoaded value, $Res Function(LocalDataLoaded) then) =
      _$LocalDataLoadedCopyWithImpl<$Res>;
  $Res call({AppData appData});
}

/// @nodoc
class _$LocalDataLoadedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $LocalDataLoadedCopyWith<$Res> {
  _$LocalDataLoadedCopyWithImpl(
      LocalDataLoaded _value, $Res Function(LocalDataLoaded) _then)
      : super(_value, (v) => _then(v as LocalDataLoaded));

  @override
  LocalDataLoaded get _value => super._value as LocalDataLoaded;

  @override
  $Res call({
    Object? appData = freezed,
  }) {
    return _then(LocalDataLoaded(
      appData: appData == freezed
          ? _value.appData
          : appData // ignore: cast_nullable_to_non_nullable
              as AppData,
    ));
  }
}

/// @nodoc

class _$LocalDataLoaded extends LocalDataLoaded {
  const _$LocalDataLoaded({required this.appData}) : super._();

  @override
  final AppData appData;

  @override
  String toString() {
    return 'AppState.localDataLoaded(appData: $appData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocalDataLoaded &&
            (identical(other.appData, appData) || other.appData == appData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appData);

  @JsonKey(ignore: true)
  @override
  $LocalDataLoadedCopyWith<LocalDataLoaded> get copyWith =>
      _$LocalDataLoadedCopyWithImpl<LocalDataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(AppData appData) localDataLoaded,
    required TResult Function(AppData appData, Dio dio) unauthenticated,
    required TResult Function(AppData appData, Dio dio) authenticated,
  }) {
    return localDataLoaded(appData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
  }) {
    return localDataLoaded?.call(appData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
    required TResult orElse(),
  }) {
    if (localDataLoaded != null) {
      return localDataLoaded(appData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(LocalDataLoaded value) localDataLoaded,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return localDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return localDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (localDataLoaded != null) {
      return localDataLoaded(this);
    }
    return orElse();
  }
}

abstract class LocalDataLoaded extends AppState {
  const factory LocalDataLoaded({required AppData appData}) = _$LocalDataLoaded;
  const LocalDataLoaded._() : super._();

  AppData get appData;
  @JsonKey(ignore: true)
  $LocalDataLoadedCopyWith<LocalDataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
  $Res call({AppData appData, Dio dio});
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;

  @override
  $Res call({
    Object? appData = freezed,
    Object? dio = freezed,
  }) {
    return _then(Unauthenticated(
      appData: appData == freezed
          ? _value.appData
          : appData // ignore: cast_nullable_to_non_nullable
              as AppData,
      dio: dio == freezed
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ));
  }
}

/// @nodoc

class _$Unauthenticated extends Unauthenticated {
  const _$Unauthenticated({required this.appData, required this.dio})
      : super._();

  @override
  final AppData appData;
  @override
  final Dio dio;

  @override
  String toString() {
    return 'AppState.unauthenticated(appData: $appData, dio: $dio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Unauthenticated &&
            (identical(other.appData, appData) || other.appData == appData) &&
            (identical(other.dio, dio) || other.dio == dio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appData, dio);

  @JsonKey(ignore: true)
  @override
  $UnauthenticatedCopyWith<Unauthenticated> get copyWith =>
      _$UnauthenticatedCopyWithImpl<Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(AppData appData) localDataLoaded,
    required TResult Function(AppData appData, Dio dio) unauthenticated,
    required TResult Function(AppData appData, Dio dio) authenticated,
  }) {
    return unauthenticated(appData, dio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
  }) {
    return unauthenticated?.call(appData, dio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(appData, dio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(LocalDataLoaded value) localDataLoaded,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated extends AppState {
  const factory Unauthenticated({required AppData appData, required Dio dio}) =
      _$Unauthenticated;
  const Unauthenticated._() : super._();

  AppData get appData;
  Dio get dio;
  @JsonKey(ignore: true)
  $UnauthenticatedCopyWith<Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
  $Res call({AppData appData, Dio dio});
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;

  @override
  $Res call({
    Object? appData = freezed,
    Object? dio = freezed,
  }) {
    return _then(Authenticated(
      appData: appData == freezed
          ? _value.appData
          : appData // ignore: cast_nullable_to_non_nullable
              as AppData,
      dio: dio == freezed
          ? _value.dio
          : dio // ignore: cast_nullable_to_non_nullable
              as Dio,
    ));
  }
}

/// @nodoc

class _$Authenticated extends Authenticated {
  const _$Authenticated({required this.appData, required this.dio}) : super._();

  @override
  final AppData appData;
  @override
  final Dio dio;

  @override
  String toString() {
    return 'AppState.authenticated(appData: $appData, dio: $dio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Authenticated &&
            (identical(other.appData, appData) || other.appData == appData) &&
            (identical(other.dio, dio) || other.dio == dio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appData, dio);

  @JsonKey(ignore: true)
  @override
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      _$AuthenticatedCopyWithImpl<Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function(AppData appData) localDataLoaded,
    required TResult Function(AppData appData, Dio dio) unauthenticated,
    required TResult Function(AppData appData, Dio dio) authenticated,
  }) {
    return authenticated(appData, dio);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
  }) {
    return authenticated?.call(appData, dio);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function(AppData appData)? localDataLoaded,
    TResult Function(AppData appData, Dio dio)? unauthenticated,
    TResult Function(AppData appData, Dio dio)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(appData, dio);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty value) empty,
    required TResult Function(LocalDataLoaded value) localDataLoaded,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Authenticated value) authenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty value)? empty,
    TResult Function(LocalDataLoaded value)? localDataLoaded,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Authenticated value)? authenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated extends AppState {
  const factory Authenticated({required AppData appData, required Dio dio}) =
      _$Authenticated;
  const Authenticated._() : super._();

  AppData get appData;
  Dio get dio;
  @JsonKey(ignore: true)
  $AuthenticatedCopyWith<Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
