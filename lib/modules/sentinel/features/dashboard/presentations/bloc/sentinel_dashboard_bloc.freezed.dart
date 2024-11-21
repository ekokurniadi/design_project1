// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sentinel_dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SentinelDashboardEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getDashboardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getDashboardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getDashboardById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDashboardByIdEvent value) getDashboardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDashboardByIdEvent value)? getDashboardById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDashboardByIdEvent value)? getDashboardById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SentinelDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentinelDashboardEventCopyWith<SentinelDashboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentinelDashboardEventCopyWith<$Res> {
  factory $SentinelDashboardEventCopyWith(SentinelDashboardEvent value,
          $Res Function(SentinelDashboardEvent) then) =
      _$SentinelDashboardEventCopyWithImpl<$Res, SentinelDashboardEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$SentinelDashboardEventCopyWithImpl<$Res,
        $Val extends SentinelDashboardEvent>
    implements $SentinelDashboardEventCopyWith<$Res> {
  _$SentinelDashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentinelDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDashboardByIdEventImplCopyWith<$Res>
    implements $SentinelDashboardEventCopyWith<$Res> {
  factory _$$GetDashboardByIdEventImplCopyWith(
          _$GetDashboardByIdEventImpl value,
          $Res Function(_$GetDashboardByIdEventImpl) then) =
      __$$GetDashboardByIdEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetDashboardByIdEventImplCopyWithImpl<$Res>
    extends _$SentinelDashboardEventCopyWithImpl<$Res,
        _$GetDashboardByIdEventImpl>
    implements _$$GetDashboardByIdEventImplCopyWith<$Res> {
  __$$GetDashboardByIdEventImplCopyWithImpl(_$GetDashboardByIdEventImpl _value,
      $Res Function(_$GetDashboardByIdEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentinelDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetDashboardByIdEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDashboardByIdEventImpl implements _GetDashboardByIdEvent {
  const _$GetDashboardByIdEventImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SentinelDashboardEvent.getDashboardById(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDashboardByIdEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SentinelDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDashboardByIdEventImplCopyWith<_$GetDashboardByIdEventImpl>
      get copyWith => __$$GetDashboardByIdEventImplCopyWithImpl<
          _$GetDashboardByIdEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getDashboardById,
  }) {
    return getDashboardById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getDashboardById,
  }) {
    return getDashboardById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getDashboardById,
    required TResult orElse(),
  }) {
    if (getDashboardById != null) {
      return getDashboardById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDashboardByIdEvent value) getDashboardById,
  }) {
    return getDashboardById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDashboardByIdEvent value)? getDashboardById,
  }) {
    return getDashboardById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDashboardByIdEvent value)? getDashboardById,
    required TResult orElse(),
  }) {
    if (getDashboardById != null) {
      return getDashboardById(this);
    }
    return orElse();
  }
}

abstract class _GetDashboardByIdEvent implements SentinelDashboardEvent {
  const factory _GetDashboardByIdEvent(final int id) =
      _$GetDashboardByIdEventImpl;

  @override
  int get id;

  /// Create a copy of SentinelDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDashboardByIdEventImplCopyWith<_$GetDashboardByIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SentinelDashboardState {
  DashboardState get status => throw _privateConstructorUsedError;
  SentinelDashboardEntity get dashboardData =>
      throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of SentinelDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentinelDashboardStateCopyWith<SentinelDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentinelDashboardStateCopyWith<$Res> {
  factory $SentinelDashboardStateCopyWith(SentinelDashboardState value,
          $Res Function(SentinelDashboardState) then) =
      _$SentinelDashboardStateCopyWithImpl<$Res, SentinelDashboardState>;
  @useResult
  $Res call(
      {DashboardState status,
      SentinelDashboardEntity dashboardData,
      String message});

  $SentinelDashboardEntityCopyWith<$Res> get dashboardData;
}

/// @nodoc
class _$SentinelDashboardStateCopyWithImpl<$Res,
        $Val extends SentinelDashboardState>
    implements $SentinelDashboardStateCopyWith<$Res> {
  _$SentinelDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentinelDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dashboardData = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DashboardState,
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as SentinelDashboardEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of SentinelDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SentinelDashboardEntityCopyWith<$Res> get dashboardData {
    return $SentinelDashboardEntityCopyWith<$Res>(_value.dashboardData,
        (value) {
      return _then(_value.copyWith(dashboardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SentinelDashboardStateImplCopyWith<$Res>
    implements $SentinelDashboardStateCopyWith<$Res> {
  factory _$$SentinelDashboardStateImplCopyWith(
          _$SentinelDashboardStateImpl value,
          $Res Function(_$SentinelDashboardStateImpl) then) =
      __$$SentinelDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DashboardState status,
      SentinelDashboardEntity dashboardData,
      String message});

  @override
  $SentinelDashboardEntityCopyWith<$Res> get dashboardData;
}

/// @nodoc
class __$$SentinelDashboardStateImplCopyWithImpl<$Res>
    extends _$SentinelDashboardStateCopyWithImpl<$Res,
        _$SentinelDashboardStateImpl>
    implements _$$SentinelDashboardStateImplCopyWith<$Res> {
  __$$SentinelDashboardStateImplCopyWithImpl(
      _$SentinelDashboardStateImpl _value,
      $Res Function(_$SentinelDashboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentinelDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dashboardData = null,
    Object? message = null,
  }) {
    return _then(_$SentinelDashboardStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DashboardState,
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as SentinelDashboardEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SentinelDashboardStateImpl implements _SentinelDashboardState {
  const _$SentinelDashboardStateImpl(
      {required this.status,
      required this.dashboardData,
      required this.message});

  @override
  final DashboardState status;
  @override
  final SentinelDashboardEntity dashboardData;
  @override
  final String message;

  @override
  String toString() {
    return 'SentinelDashboardState(status: $status, dashboardData: $dashboardData, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentinelDashboardStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dashboardData, dashboardData) ||
                other.dashboardData == dashboardData) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, dashboardData, message);

  /// Create a copy of SentinelDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentinelDashboardStateImplCopyWith<_$SentinelDashboardStateImpl>
      get copyWith => __$$SentinelDashboardStateImplCopyWithImpl<
          _$SentinelDashboardStateImpl>(this, _$identity);
}

abstract class _SentinelDashboardState implements SentinelDashboardState {
  const factory _SentinelDashboardState(
      {required final DashboardState status,
      required final SentinelDashboardEntity dashboardData,
      required final String message}) = _$SentinelDashboardStateImpl;

  @override
  DashboardState get status;
  @override
  SentinelDashboardEntity get dashboardData;
  @override
  String get message;

  /// Create a copy of SentinelDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentinelDashboardStateImplCopyWith<_$SentinelDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
