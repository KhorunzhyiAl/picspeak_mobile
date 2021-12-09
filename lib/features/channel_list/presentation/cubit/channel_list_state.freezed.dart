// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChannelListStateTearOff {
  const _$ChannelListStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading(List<Channel> cachedList) {
    return _Loading(
      cachedList,
    );
  }

  _Failure failure(Failure failure) {
    return _Failure(
      failure,
    );
  }

  _Ready ready(List<Channel> list) {
    return _Ready(
      list,
    );
  }
}

/// @nodoc
const $ChannelListState = _$ChannelListStateTearOff();

/// @nodoc
mixin _$ChannelListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Channel> cachedList) loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Channel> list) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelListStateCopyWith<$Res> {
  factory $ChannelListStateCopyWith(
          ChannelListState value, $Res Function(ChannelListState) then) =
      _$ChannelListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChannelListStateCopyWithImpl<$Res>
    implements $ChannelListStateCopyWith<$Res> {
  _$ChannelListStateCopyWithImpl(this._value, this._then);

  final ChannelListState _value;
  // ignore: unused_field
  final $Res Function(ChannelListState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ChannelListStateCopyWithImpl<$Res>
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
    return 'ChannelListState.initial()';
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
    required TResult Function(List<Channel> cachedList) loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Channel> list) ready,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Ready value) ready,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChannelListState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  $Res call({List<Channel> cachedList});
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ChannelListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? cachedList = freezed,
  }) {
    return _then(_Loading(
      cachedList == freezed
          ? _value.cachedList
          : cachedList // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.cachedList);

  @override
  final List<Channel> cachedList;

  @override
  String toString() {
    return 'ChannelListState.loading(cachedList: $cachedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality()
                .equals(other.cachedList, cachedList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cachedList));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Channel> cachedList) loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Channel> list) ready,
  }) {
    return loading(cachedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
  }) {
    return loading?.call(cachedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cachedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Ready value) ready,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChannelListState {
  const factory _Loading(List<Channel> cachedList) = _$_Loading;

  List<Channel> get cachedList;
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ChannelListStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ChannelListState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Channel> cachedList) loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Channel> list) ready,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Ready value) ready,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChannelListState {
  const factory _Failure(Failure failure) = _$_Failure;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadyCopyWith<$Res> {
  factory _$ReadyCopyWith(_Ready value, $Res Function(_Ready) then) =
      __$ReadyCopyWithImpl<$Res>;
  $Res call({List<Channel> list});
}

/// @nodoc
class __$ReadyCopyWithImpl<$Res> extends _$ChannelListStateCopyWithImpl<$Res>
    implements _$ReadyCopyWith<$Res> {
  __$ReadyCopyWithImpl(_Ready _value, $Res Function(_Ready) _then)
      : super(_value, (v) => _then(v as _Ready));

  @override
  _Ready get _value => super._value as _Ready;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_Ready(
      list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Channel>,
    ));
  }
}

/// @nodoc

class _$_Ready implements _Ready {
  const _$_Ready(this.list);

  @override
  final List<Channel> list;

  @override
  String toString() {
    return 'ChannelListState.ready(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ready &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$ReadyCopyWith<_Ready> get copyWith =>
      __$ReadyCopyWithImpl<_Ready>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Channel> cachedList) loading,
    required TResult Function(Failure failure) failure,
    required TResult Function(List<Channel> list) ready,
  }) {
    return ready(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
  }) {
    return ready?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Channel> cachedList)? loading,
    TResult Function(Failure failure)? failure,
    TResult Function(List<Channel> list)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements ChannelListState {
  const factory _Ready(List<Channel> list) = _$_Ready;

  List<Channel> get list;
  @JsonKey(ignore: true)
  _$ReadyCopyWith<_Ready> get copyWith => throw _privateConstructorUsedError;
}
