// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChannelTearOff {
  const _$ChannelTearOff();

  _Channel call(
      {required String id,
      required String imageUrl,
      required String name,
      required DateTime nextEvent}) {
    return _Channel(
      id: id,
      imageUrl: imageUrl,
      name: name,
      nextEvent: nextEvent,
    );
  }
}

/// @nodoc
const $Channel = _$ChannelTearOff();

/// @nodoc
mixin _$Channel {
  String get id => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get nextEvent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call({String id, String imageUrl, String name, DateTime nextEvent});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? nextEvent = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nextEvent: nextEvent == freezed
          ? _value.nextEvent
          : nextEvent // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String imageUrl, String name, DateTime nextEvent});
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;

  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? nextEvent = freezed,
  }) {
    return _then(_Channel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nextEvent: nextEvent == freezed
          ? _value.nextEvent
          : nextEvent // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Channel implements _Channel {
  const _$_Channel(
      {required this.id,
      required this.imageUrl,
      required this.name,
      required this.nextEvent});

  @override
  final String id;
  @override
  final String imageUrl;
  @override
  final String name;
  @override
  final DateTime nextEvent;

  @override
  String toString() {
    return 'Channel(id: $id, imageUrl: $imageUrl, name: $name, nextEvent: $nextEvent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Channel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nextEvent, nextEvent) ||
                other.nextEvent == nextEvent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, name, nextEvent);

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {required String id,
      required String imageUrl,
      required String name,
      required DateTime nextEvent}) = _$_Channel;

  @override
  String get id;
  @override
  String get imageUrl;
  @override
  String get name;
  @override
  DateTime get nextEvent;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocalDataTearOff {
  const _$LocalDataTearOff();

  _LocalData call({required Map<String, Channel> channels}) {
    return _LocalData(
      channels: channels,
    );
  }
}

/// @nodoc
const $LocalData = _$LocalDataTearOff();

/// @nodoc
mixin _$LocalData {
  Map<String, Channel> get channels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalDataCopyWith<LocalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDataCopyWith<$Res> {
  factory $LocalDataCopyWith(LocalData value, $Res Function(LocalData) then) =
      _$LocalDataCopyWithImpl<$Res>;
  $Res call({Map<String, Channel> channels});
}

/// @nodoc
class _$LocalDataCopyWithImpl<$Res> implements $LocalDataCopyWith<$Res> {
  _$LocalDataCopyWithImpl(this._value, this._then);

  final LocalData _value;
  // ignore: unused_field
  final $Res Function(LocalData) _then;

  @override
  $Res call({
    Object? channels = freezed,
  }) {
    return _then(_value.copyWith(
      channels: channels == freezed
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Map<String, Channel>,
    ));
  }
}

/// @nodoc
abstract class _$LocalDataCopyWith<$Res> implements $LocalDataCopyWith<$Res> {
  factory _$LocalDataCopyWith(
          _LocalData value, $Res Function(_LocalData) then) =
      __$LocalDataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, Channel> channels});
}

/// @nodoc
class __$LocalDataCopyWithImpl<$Res> extends _$LocalDataCopyWithImpl<$Res>
    implements _$LocalDataCopyWith<$Res> {
  __$LocalDataCopyWithImpl(_LocalData _value, $Res Function(_LocalData) _then)
      : super(_value, (v) => _then(v as _LocalData));

  @override
  _LocalData get _value => super._value as _LocalData;

  @override
  $Res call({
    Object? channels = freezed,
  }) {
    return _then(_LocalData(
      channels: channels == freezed
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as Map<String, Channel>,
    ));
  }
}

/// @nodoc

class _$_LocalData implements _LocalData {
  const _$_LocalData({required this.channels});

  @override
  final Map<String, Channel> channels;

  @override
  String toString() {
    return 'LocalData(channels: $channels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalData &&
            const DeepCollectionEquality().equals(other.channels, channels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(channels));

  @JsonKey(ignore: true)
  @override
  _$LocalDataCopyWith<_LocalData> get copyWith =>
      __$LocalDataCopyWithImpl<_LocalData>(this, _$identity);
}

abstract class _LocalData implements LocalData {
  const factory _LocalData({required Map<String, Channel> channels}) =
      _$_LocalData;

  @override
  Map<String, Channel> get channels;
  @override
  @JsonKey(ignore: true)
  _$LocalDataCopyWith<_LocalData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoadAppInteractorStatesTearOff {
  const _$LoadAppInteractorStatesTearOff();

  _LocalDataLoaded localDataLoaded(LocalData localData) {
    return _LocalDataLoaded(
      localData,
    );
  }

  _Authenticated authenticated(ClientRepository client) {
    return _Authenticated(
      client,
    );
  }

  _Unauthenticated unauthenticated(Failure failure) {
    return _Unauthenticated(
      failure,
    );
  }
}

/// @nodoc
const $LoadAppInteractorStates = _$LoadAppInteractorStatesTearOff();

/// @nodoc
mixin _$LoadAppInteractorStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalData localData) localDataLoaded,
    required TResult Function(ClientRepository client) authenticated,
    required TResult Function(Failure failure) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadAppInteractorStatesCopyWith<$Res> {
  factory $LoadAppInteractorStatesCopyWith(LoadAppInteractorStates value,
          $Res Function(LoadAppInteractorStates) then) =
      _$LoadAppInteractorStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadAppInteractorStatesCopyWithImpl<$Res>
    implements $LoadAppInteractorStatesCopyWith<$Res> {
  _$LoadAppInteractorStatesCopyWithImpl(this._value, this._then);

  final LoadAppInteractorStates _value;
  // ignore: unused_field
  final $Res Function(LoadAppInteractorStates) _then;
}

/// @nodoc
abstract class _$LocalDataLoadedCopyWith<$Res> {
  factory _$LocalDataLoadedCopyWith(
          _LocalDataLoaded value, $Res Function(_LocalDataLoaded) then) =
      __$LocalDataLoadedCopyWithImpl<$Res>;
  $Res call({LocalData localData});

  $LocalDataCopyWith<$Res> get localData;
}

/// @nodoc
class __$LocalDataLoadedCopyWithImpl<$Res>
    extends _$LoadAppInteractorStatesCopyWithImpl<$Res>
    implements _$LocalDataLoadedCopyWith<$Res> {
  __$LocalDataLoadedCopyWithImpl(
      _LocalDataLoaded _value, $Res Function(_LocalDataLoaded) _then)
      : super(_value, (v) => _then(v as _LocalDataLoaded));

  @override
  _LocalDataLoaded get _value => super._value as _LocalDataLoaded;

  @override
  $Res call({
    Object? localData = freezed,
  }) {
    return _then(_LocalDataLoaded(
      localData == freezed
          ? _value.localData
          : localData // ignore: cast_nullable_to_non_nullable
              as LocalData,
    ));
  }

  @override
  $LocalDataCopyWith<$Res> get localData {
    return $LocalDataCopyWith<$Res>(_value.localData, (value) {
      return _then(_value.copyWith(localData: value));
    });
  }
}

/// @nodoc

class _$_LocalDataLoaded implements _LocalDataLoaded {
  const _$_LocalDataLoaded(this.localData);

  @override
  final LocalData localData;

  @override
  String toString() {
    return 'LoadAppInteractorStates.localDataLoaded(localData: $localData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocalDataLoaded &&
            (identical(other.localData, localData) ||
                other.localData == localData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localData);

  @JsonKey(ignore: true)
  @override
  _$LocalDataLoadedCopyWith<_LocalDataLoaded> get copyWith =>
      __$LocalDataLoadedCopyWithImpl<_LocalDataLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalData localData) localDataLoaded,
    required TResult Function(ClientRepository client) authenticated,
    required TResult Function(Failure failure) unauthenticated,
  }) {
    return localDataLoaded(localData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
  }) {
    return localDataLoaded?.call(localData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
    required TResult orElse(),
  }) {
    if (localDataLoaded != null) {
      return localDataLoaded(localData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return localDataLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return localDataLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (localDataLoaded != null) {
      return localDataLoaded(this);
    }
    return orElse();
  }
}

abstract class _LocalDataLoaded implements LoadAppInteractorStates {
  const factory _LocalDataLoaded(LocalData localData) = _$_LocalDataLoaded;

  LocalData get localData;
  @JsonKey(ignore: true)
  _$LocalDataLoadedCopyWith<_LocalDataLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({ClientRepository client});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    extends _$LoadAppInteractorStatesCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_Authenticated(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as ClientRepository,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.client);

  @override
  final ClientRepository client;

  @override
  String toString() {
    return 'LoadAppInteractorStates.authenticated(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalData localData) localDataLoaded,
    required TResult Function(ClientRepository client) authenticated,
    required TResult Function(Failure failure) unauthenticated,
  }) {
    return authenticated(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
  }) {
    return authenticated?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements LoadAppInteractorStates {
  const factory _Authenticated(ClientRepository client) = _$_Authenticated;

  ClientRepository get client;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnauthenticatedCopyWith<$Res> {
  factory _$UnauthenticatedCopyWith(
          _Unauthenticated value, $Res Function(_Unauthenticated) then) =
      __$UnauthenticatedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$UnauthenticatedCopyWithImpl<$Res>
    extends _$LoadAppInteractorStatesCopyWithImpl<$Res>
    implements _$UnauthenticatedCopyWith<$Res> {
  __$UnauthenticatedCopyWithImpl(
      _Unauthenticated _value, $Res Function(_Unauthenticated) _then)
      : super(_value, (v) => _then(v as _Unauthenticated));

  @override
  _Unauthenticated get _value => super._value as _Unauthenticated;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Unauthenticated(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'LoadAppInteractorStates.unauthenticated(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Unauthenticated &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$UnauthenticatedCopyWith<_Unauthenticated> get copyWith =>
      __$UnauthenticatedCopyWithImpl<_Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalData localData) localDataLoaded,
    required TResult Function(ClientRepository client) authenticated,
    required TResult Function(Failure failure) unauthenticated,
  }) {
    return unauthenticated(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
  }) {
    return unauthenticated?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalData localData)? localDataLoaded,
    TResult Function(ClientRepository client)? authenticated,
    TResult Function(Failure failure)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalDataLoaded value) localDataLoaded,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalDataLoaded value)? localDataLoaded,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements LoadAppInteractorStates {
  const factory _Unauthenticated(Failure failure) = _$_Unauthenticated;

  Failure get failure;
  @JsonKey(ignore: true)
  _$UnauthenticatedCopyWith<_Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
