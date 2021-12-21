// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel.dart';

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
      {required String channelId,
      required String imageId,
      required String name,
      required DateTime nextEventDate,
      required List<Event> events}) {
    return _Channel(
      channelId: channelId,
      imageId: imageId,
      name: name,
      nextEventDate: nextEventDate,
      events: events,
    );
  }
}

/// @nodoc
const $Channel = _$ChannelTearOff();

/// @nodoc
mixin _$Channel {
  String get channelId => throw _privateConstructorUsedError;
  String get imageId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get nextEventDate => throw _privateConstructorUsedError;
  List<Event> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {String channelId,
      String imageId,
      String name,
      DateTime nextEventDate,
      List<Event> events});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

  @override
  $Res call({
    Object? channelId = freezed,
    Object? imageId = freezed,
    Object? name = freezed,
    Object? nextEventDate = freezed,
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nextEventDate: nextEventDate == freezed
          ? _value.nextEventDate
          : nextEventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String channelId,
      String imageId,
      String name,
      DateTime nextEventDate,
      List<Event> events});
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
    Object? channelId = freezed,
    Object? imageId = freezed,
    Object? name = freezed,
    Object? nextEventDate = freezed,
    Object? events = freezed,
  }) {
    return _then(_Channel(
      channelId: channelId == freezed
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      imageId: imageId == freezed
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nextEventDate: nextEventDate == freezed
          ? _value.nextEventDate
          : nextEventDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc

class _$_Channel implements _Channel {
  const _$_Channel(
      {required this.channelId,
      required this.imageId,
      required this.name,
      required this.nextEventDate,
      required this.events});

  @override
  final String channelId;
  @override
  final String imageId;
  @override
  final String name;
  @override
  final DateTime nextEventDate;
  @override
  final List<Event> events;

  @override
  String toString() {
    return 'Channel(channelId: $channelId, imageId: $imageId, name: $name, nextEventDate: $nextEventDate, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Channel &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nextEventDate, nextEventDate) ||
                other.nextEventDate == nextEventDate) &&
            const DeepCollectionEquality().equals(other.events, events));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelId, imageId, name,
      nextEventDate, const DeepCollectionEquality().hash(events));

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {required String channelId,
      required String imageId,
      required String name,
      required DateTime nextEventDate,
      required List<Event> events}) = _$_Channel;

  @override
  String get channelId;
  @override
  String get imageId;
  @override
  String get name;
  @override
  DateTime get nextEventDate;
  @override
  List<Event> get events;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}