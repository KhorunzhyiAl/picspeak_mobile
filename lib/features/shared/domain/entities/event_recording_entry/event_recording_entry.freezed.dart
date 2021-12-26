// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_recording_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventRecordingEntryTearOff {
  const _$EventRecordingEntryTearOff();

  _EventRecordingEntry call(
      {required Event event,
      required Duration totalDuration,
      required List<TalkRecordingEntry> talkRecordings}) {
    return _EventRecordingEntry(
      event: event,
      totalDuration: totalDuration,
      talkRecordings: talkRecordings,
    );
  }
}

/// @nodoc
const $EventRecordingEntry = _$EventRecordingEntryTearOff();

/// @nodoc
mixin _$EventRecordingEntry {
  Event get event => throw _privateConstructorUsedError;
  Duration get totalDuration => throw _privateConstructorUsedError;
  List<TalkRecordingEntry> get talkRecordings =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventRecordingEntryCopyWith<EventRecordingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventRecordingEntryCopyWith<$Res> {
  factory $EventRecordingEntryCopyWith(
          EventRecordingEntry value, $Res Function(EventRecordingEntry) then) =
      _$EventRecordingEntryCopyWithImpl<$Res>;
  $Res call(
      {Event event,
      Duration totalDuration,
      List<TalkRecordingEntry> talkRecordings});

  $EventCopyWith<$Res> get event;
}

/// @nodoc
class _$EventRecordingEntryCopyWithImpl<$Res>
    implements $EventRecordingEntryCopyWith<$Res> {
  _$EventRecordingEntryCopyWithImpl(this._value, this._then);

  final EventRecordingEntry _value;
  // ignore: unused_field
  final $Res Function(EventRecordingEntry) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? totalDuration = freezed,
    Object? talkRecordings = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      talkRecordings: talkRecordings == freezed
          ? _value.talkRecordings
          : talkRecordings // ignore: cast_nullable_to_non_nullable
              as List<TalkRecordingEntry>,
    ));
  }

  @override
  $EventCopyWith<$Res> get event {
    return $EventCopyWith<$Res>(_value.event, (value) {
      return _then(_value.copyWith(event: value));
    });
  }
}

/// @nodoc
abstract class _$EventRecordingEntryCopyWith<$Res>
    implements $EventRecordingEntryCopyWith<$Res> {
  factory _$EventRecordingEntryCopyWith(_EventRecordingEntry value,
          $Res Function(_EventRecordingEntry) then) =
      __$EventRecordingEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {Event event,
      Duration totalDuration,
      List<TalkRecordingEntry> talkRecordings});

  @override
  $EventCopyWith<$Res> get event;
}

/// @nodoc
class __$EventRecordingEntryCopyWithImpl<$Res>
    extends _$EventRecordingEntryCopyWithImpl<$Res>
    implements _$EventRecordingEntryCopyWith<$Res> {
  __$EventRecordingEntryCopyWithImpl(
      _EventRecordingEntry _value, $Res Function(_EventRecordingEntry) _then)
      : super(_value, (v) => _then(v as _EventRecordingEntry));

  @override
  _EventRecordingEntry get _value => super._value as _EventRecordingEntry;

  @override
  $Res call({
    Object? event = freezed,
    Object? totalDuration = freezed,
    Object? talkRecordings = freezed,
  }) {
    return _then(_EventRecordingEntry(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as Event,
      totalDuration: totalDuration == freezed
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as Duration,
      talkRecordings: talkRecordings == freezed
          ? _value.talkRecordings
          : talkRecordings // ignore: cast_nullable_to_non_nullable
              as List<TalkRecordingEntry>,
    ));
  }
}

/// @nodoc

class _$_EventRecordingEntry implements _EventRecordingEntry {
  const _$_EventRecordingEntry(
      {required this.event,
      required this.totalDuration,
      required this.talkRecordings});

  @override
  final Event event;
  @override
  final Duration totalDuration;
  @override
  final List<TalkRecordingEntry> talkRecordings;

  @override
  String toString() {
    return 'EventRecordingEntry(event: $event, totalDuration: $totalDuration, talkRecordings: $talkRecordings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EventRecordingEntry &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            const DeepCollectionEquality()
                .equals(other.talkRecordings, talkRecordings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, totalDuration,
      const DeepCollectionEquality().hash(talkRecordings));

  @JsonKey(ignore: true)
  @override
  _$EventRecordingEntryCopyWith<_EventRecordingEntry> get copyWith =>
      __$EventRecordingEntryCopyWithImpl<_EventRecordingEntry>(
          this, _$identity);
}

abstract class _EventRecordingEntry implements EventRecordingEntry {
  const factory _EventRecordingEntry(
          {required Event event,
          required Duration totalDuration,
          required List<TalkRecordingEntry> talkRecordings}) =
      _$_EventRecordingEntry;

  @override
  Event get event;
  @override
  Duration get totalDuration;
  @override
  List<TalkRecordingEntry> get talkRecordings;
  @override
  @JsonKey(ignore: true)
  _$EventRecordingEntryCopyWith<_EventRecordingEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
