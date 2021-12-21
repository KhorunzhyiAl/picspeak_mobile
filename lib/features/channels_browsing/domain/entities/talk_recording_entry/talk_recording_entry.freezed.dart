// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'talk_recording_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TalkRecordingEntryTearOff {
  const _$TalkRecordingEntryTearOff();

  _TalkRecordingEntry call(
      {required String recordingId,
      required String eventId,
      required Duration duraition,
      required Talk talk}) {
    return _TalkRecordingEntry(
      recordingId: recordingId,
      eventId: eventId,
      duraition: duraition,
      talk: talk,
    );
  }
}

/// @nodoc
const $TalkRecordingEntry = _$TalkRecordingEntryTearOff();

/// @nodoc
mixin _$TalkRecordingEntry {
  String get recordingId => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  Duration get duraition => throw _privateConstructorUsedError;
  Talk get talk => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TalkRecordingEntryCopyWith<TalkRecordingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TalkRecordingEntryCopyWith<$Res> {
  factory $TalkRecordingEntryCopyWith(
          TalkRecordingEntry value, $Res Function(TalkRecordingEntry) then) =
      _$TalkRecordingEntryCopyWithImpl<$Res>;
  $Res call(
      {String recordingId, String eventId, Duration duraition, Talk talk});

  $TalkCopyWith<$Res> get talk;
}

/// @nodoc
class _$TalkRecordingEntryCopyWithImpl<$Res>
    implements $TalkRecordingEntryCopyWith<$Res> {
  _$TalkRecordingEntryCopyWithImpl(this._value, this._then);

  final TalkRecordingEntry _value;
  // ignore: unused_field
  final $Res Function(TalkRecordingEntry) _then;

  @override
  $Res call({
    Object? recordingId = freezed,
    Object? eventId = freezed,
    Object? duraition = freezed,
    Object? talk = freezed,
  }) {
    return _then(_value.copyWith(
      recordingId: recordingId == freezed
          ? _value.recordingId
          : recordingId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      duraition: duraition == freezed
          ? _value.duraition
          : duraition // ignore: cast_nullable_to_non_nullable
              as Duration,
      talk: talk == freezed
          ? _value.talk
          : talk // ignore: cast_nullable_to_non_nullable
              as Talk,
    ));
  }

  @override
  $TalkCopyWith<$Res> get talk {
    return $TalkCopyWith<$Res>(_value.talk, (value) {
      return _then(_value.copyWith(talk: value));
    });
  }
}

/// @nodoc
abstract class _$TalkRecordingEntryCopyWith<$Res>
    implements $TalkRecordingEntryCopyWith<$Res> {
  factory _$TalkRecordingEntryCopyWith(
          _TalkRecordingEntry value, $Res Function(_TalkRecordingEntry) then) =
      __$TalkRecordingEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String recordingId, String eventId, Duration duraition, Talk talk});

  @override
  $TalkCopyWith<$Res> get talk;
}

/// @nodoc
class __$TalkRecordingEntryCopyWithImpl<$Res>
    extends _$TalkRecordingEntryCopyWithImpl<$Res>
    implements _$TalkRecordingEntryCopyWith<$Res> {
  __$TalkRecordingEntryCopyWithImpl(
      _TalkRecordingEntry _value, $Res Function(_TalkRecordingEntry) _then)
      : super(_value, (v) => _then(v as _TalkRecordingEntry));

  @override
  _TalkRecordingEntry get _value => super._value as _TalkRecordingEntry;

  @override
  $Res call({
    Object? recordingId = freezed,
    Object? eventId = freezed,
    Object? duraition = freezed,
    Object? talk = freezed,
  }) {
    return _then(_TalkRecordingEntry(
      recordingId: recordingId == freezed
          ? _value.recordingId
          : recordingId // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      duraition: duraition == freezed
          ? _value.duraition
          : duraition // ignore: cast_nullable_to_non_nullable
              as Duration,
      talk: talk == freezed
          ? _value.talk
          : talk // ignore: cast_nullable_to_non_nullable
              as Talk,
    ));
  }
}

/// @nodoc

class _$_TalkRecordingEntry implements _TalkRecordingEntry {
  const _$_TalkRecordingEntry(
      {required this.recordingId,
      required this.eventId,
      required this.duraition,
      required this.talk});

  @override
  final String recordingId;
  @override
  final String eventId;
  @override
  final Duration duraition;
  @override
  final Talk talk;

  @override
  String toString() {
    return 'TalkRecordingEntry(recordingId: $recordingId, eventId: $eventId, duraition: $duraition, talk: $talk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TalkRecordingEntry &&
            (identical(other.recordingId, recordingId) ||
                other.recordingId == recordingId) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.duraition, duraition) ||
                other.duraition == duraition) &&
            (identical(other.talk, talk) || other.talk == talk));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, recordingId, eventId, duraition, talk);

  @JsonKey(ignore: true)
  @override
  _$TalkRecordingEntryCopyWith<_TalkRecordingEntry> get copyWith =>
      __$TalkRecordingEntryCopyWithImpl<_TalkRecordingEntry>(this, _$identity);
}

abstract class _TalkRecordingEntry implements TalkRecordingEntry {
  const factory _TalkRecordingEntry(
      {required String recordingId,
      required String eventId,
      required Duration duraition,
      required Talk talk}) = _$_TalkRecordingEntry;

  @override
  String get recordingId;
  @override
  String get eventId;
  @override
  Duration get duraition;
  @override
  Talk get talk;
  @override
  @JsonKey(ignore: true)
  _$TalkRecordingEntryCopyWith<_TalkRecordingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
