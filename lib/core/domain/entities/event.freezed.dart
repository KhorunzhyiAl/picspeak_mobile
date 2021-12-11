// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

  _Event call(
      {required String name,
      required DateTime start,
      required List<Talk> talks}) {
    return _Event(
      name: name,
      start: start,
      talks: talks,
    );
  }
}

/// @nodoc
const $Event = _$EventTearOff();

/// @nodoc
mixin _$Event {
  String get name => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  List<Talk> get talks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call({String name, DateTime start, List<Talk> talks});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? start = freezed,
    Object? talks = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      talks: talks == freezed
          ? _value.talks
          : talks // ignore: cast_nullable_to_non_nullable
              as List<Talk>,
    ));
  }
}

/// @nodoc
abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call({String name, DateTime start, List<Talk> talks});
}

/// @nodoc
class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object? name = freezed,
    Object? start = freezed,
    Object? talks = freezed,
  }) {
    return _then(_Event(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      talks: talks == freezed
          ? _value.talks
          : talks // ignore: cast_nullable_to_non_nullable
              as List<Talk>,
    ));
  }
}

/// @nodoc

class _$_Event implements _Event {
  const _$_Event(
      {required this.name, required this.start, required this.talks});

  @override
  final String name;
  @override
  final DateTime start;
  @override
  final List<Talk> talks;

  @override
  String toString() {
    return 'Event(name: $name, start: $start, talks: $talks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Event &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.start, start) || other.start == start) &&
            const DeepCollectionEquality().equals(other.talks, talks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, start, const DeepCollectionEquality().hash(talks));

  @JsonKey(ignore: true)
  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);
}

abstract class _Event implements Event {
  const factory _Event(
      {required String name,
      required DateTime start,
      required List<Talk> talks}) = _$_Event;

  @override
  String get name;
  @override
  DateTime get start;
  @override
  List<Talk> get talks;
  @override
  @JsonKey(ignore: true)
  _$EventCopyWith<_Event> get copyWith => throw _privateConstructorUsedError;
}