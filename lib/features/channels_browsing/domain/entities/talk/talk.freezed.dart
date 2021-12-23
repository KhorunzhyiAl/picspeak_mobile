// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'talk.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TalkTearOff {
  const _$TalkTearOff();

  _Talk call(
      {required String talkId,
      required String name,
      required Duration duration,
      required String speakerId,
      required String speakerUsername}) {
    return _Talk(
      talkId: talkId,
      name: name,
      duration: duration,
      speakerId: speakerId,
      speakerUsername: speakerUsername,
    );
  }
}

/// @nodoc
const $Talk = _$TalkTearOff();

/// @nodoc
mixin _$Talk {
  String get talkId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  String get speakerId => throw _privateConstructorUsedError;
  String get speakerUsername => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TalkCopyWith<Talk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkCopyWith<$Res> {
  factory $TalkCopyWith(Talk value, $Res Function(Talk) then) =
      _$TalkCopyWithImpl<$Res>;
  $Res call(
      {String talkId,
      String name,
      Duration duration,
      String speakerId,
      String speakerUsername});
}

/// @nodoc
class _$TalkCopyWithImpl<$Res> implements $TalkCopyWith<$Res> {
  _$TalkCopyWithImpl(this._value, this._then);

  final Talk _value;
  // ignore: unused_field
  final $Res Function(Talk) _then;

  @override
  $Res call({
    Object? talkId = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? speakerId = freezed,
    Object? speakerUsername = freezed,
  }) {
    return _then(_value.copyWith(
      talkId: talkId == freezed
          ? _value.talkId
          : talkId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      speakerId: speakerId == freezed
          ? _value.speakerId
          : speakerId // ignore: cast_nullable_to_non_nullable
              as String,
      speakerUsername: speakerUsername == freezed
          ? _value.speakerUsername
          : speakerUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TalkCopyWith<$Res> implements $TalkCopyWith<$Res> {
  factory _$TalkCopyWith(_Talk value, $Res Function(_Talk) then) =
      __$TalkCopyWithImpl<$Res>;
  @override
  $Res call(
      {String talkId,
      String name,
      Duration duration,
      String speakerId,
      String speakerUsername});
}

/// @nodoc
class __$TalkCopyWithImpl<$Res> extends _$TalkCopyWithImpl<$Res>
    implements _$TalkCopyWith<$Res> {
  __$TalkCopyWithImpl(_Talk _value, $Res Function(_Talk) _then)
      : super(_value, (v) => _then(v as _Talk));

  @override
  _Talk get _value => super._value as _Talk;

  @override
  $Res call({
    Object? talkId = freezed,
    Object? name = freezed,
    Object? duration = freezed,
    Object? speakerId = freezed,
    Object? speakerUsername = freezed,
  }) {
    return _then(_Talk(
      talkId: talkId == freezed
          ? _value.talkId
          : talkId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      speakerId: speakerId == freezed
          ? _value.speakerId
          : speakerId // ignore: cast_nullable_to_non_nullable
              as String,
      speakerUsername: speakerUsername == freezed
          ? _value.speakerUsername
          : speakerUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Talk implements _Talk {
  const _$_Talk(
      {required this.talkId,
      required this.name,
      required this.duration,
      required this.speakerId,
      required this.speakerUsername});

  @override
  final String talkId;
  @override
  final String name;
  @override
  final Duration duration;
  @override
  final String speakerId;
  @override
  final String speakerUsername;

  @override
  String toString() {
    return 'Talk(talkId: $talkId, name: $name, duration: $duration, speakerId: $speakerId, speakerUsername: $speakerUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Talk &&
            (identical(other.talkId, talkId) || other.talkId == talkId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.speakerId, speakerId) ||
                other.speakerId == speakerId) &&
            (identical(other.speakerUsername, speakerUsername) ||
                other.speakerUsername == speakerUsername));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, talkId, name, duration, speakerId, speakerUsername);

  @JsonKey(ignore: true)
  @override
  _$TalkCopyWith<_Talk> get copyWith =>
      __$TalkCopyWithImpl<_Talk>(this, _$identity);
}

abstract class _Talk implements Talk {
  const factory _Talk(
      {required String talkId,
      required String name,
      required Duration duration,
      required String speakerId,
      required String speakerUsername}) = _$_Talk;

  @override
  String get talkId;
  @override
  String get name;
  @override
  Duration get duration;
  @override
  String get speakerId;
  @override
  String get speakerUsername;
  @override
  @JsonKey(ignore: true)
  _$TalkCopyWith<_Talk> get copyWith => throw _privateConstructorUsedError;
}
