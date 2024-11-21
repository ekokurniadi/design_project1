// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ronpos_dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RonposDashboardEvent {
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

  /// Create a copy of RonposDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RonposDashboardEventCopyWith<RonposDashboardEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RonposDashboardEventCopyWith<$Res> {
  factory $RonposDashboardEventCopyWith(RonposDashboardEvent value,
          $Res Function(RonposDashboardEvent) then) =
      _$RonposDashboardEventCopyWithImpl<$Res, RonposDashboardEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$RonposDashboardEventCopyWithImpl<$Res,
        $Val extends RonposDashboardEvent>
    implements $RonposDashboardEventCopyWith<$Res> {
  _$RonposDashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RonposDashboardEvent
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
    implements $RonposDashboardEventCopyWith<$Res> {
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
    extends _$RonposDashboardEventCopyWithImpl<$Res,
        _$GetDashboardByIdEventImpl>
    implements _$$GetDashboardByIdEventImplCopyWith<$Res> {
  __$$GetDashboardByIdEventImplCopyWithImpl(_$GetDashboardByIdEventImpl _value,
      $Res Function(_$GetDashboardByIdEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RonposDashboardEvent
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
    return 'RonposDashboardEvent.getDashboardById(id: $id)';
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

  /// Create a copy of RonposDashboardEvent
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

abstract class _GetDashboardByIdEvent implements RonposDashboardEvent {
  const factory _GetDashboardByIdEvent(final int id) =
      _$GetDashboardByIdEventImpl;

  @override
  int get id;

  /// Create a copy of RonposDashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDashboardByIdEventImplCopyWith<_$GetDashboardByIdEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RonposDashboardState {
  DasboardState get status => throw _privateConstructorUsedError;
  DashboardEntity get dashboardData => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Create a copy of RonposDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RonposDashboardStateCopyWith<RonposDashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RonposDashboardStateCopyWith<$Res> {
  factory $RonposDashboardStateCopyWith(RonposDashboardState value,
          $Res Function(RonposDashboardState) then) =
      _$RonposDashboardStateCopyWithImpl<$Res, RonposDashboardState>;
  @useResult
  $Res call(
      {DasboardState status, DashboardEntity dashboardData, String message});

  $DashboardEntityCopyWith<$Res> get dashboardData;
}

/// @nodoc
class _$RonposDashboardStateCopyWithImpl<$Res,
        $Val extends RonposDashboardState>
    implements $RonposDashboardStateCopyWith<$Res> {
  _$RonposDashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RonposDashboardState
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
              as DasboardState,
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of RonposDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DashboardEntityCopyWith<$Res> get dashboardData {
    return $DashboardEntityCopyWith<$Res>(_value.dashboardData, (value) {
      return _then(_value.copyWith(dashboardData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RonposDashboardStateImplCopyWith<$Res>
    implements $RonposDashboardStateCopyWith<$Res> {
  factory _$$RonposDashboardStateImplCopyWith(_$RonposDashboardStateImpl value,
          $Res Function(_$RonposDashboardStateImpl) then) =
      __$$RonposDashboardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DasboardState status, DashboardEntity dashboardData, String message});

  @override
  $DashboardEntityCopyWith<$Res> get dashboardData;
}

/// @nodoc
class __$$RonposDashboardStateImplCopyWithImpl<$Res>
    extends _$RonposDashboardStateCopyWithImpl<$Res, _$RonposDashboardStateImpl>
    implements _$$RonposDashboardStateImplCopyWith<$Res> {
  __$$RonposDashboardStateImplCopyWithImpl(_$RonposDashboardStateImpl _value,
      $Res Function(_$RonposDashboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RonposDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? dashboardData = null,
    Object? message = null,
  }) {
    return _then(_$RonposDashboardStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DasboardState,
      dashboardData: null == dashboardData
          ? _value.dashboardData
          : dashboardData // ignore: cast_nullable_to_non_nullable
              as DashboardEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RonposDashboardStateImpl implements _RonposDashboardState {
  const _$RonposDashboardStateImpl(
      {required this.status,
      required this.dashboardData,
      required this.message});

  @override
  final DasboardState status;
  @override
  final DashboardEntity dashboardData;
  @override
  final String message;

  @override
  String toString() {
    return 'RonposDashboardState(status: $status, dashboardData: $dashboardData, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RonposDashboardStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dashboardData, dashboardData) ||
                other.dashboardData == dashboardData) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, dashboardData, message);

  /// Create a copy of RonposDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RonposDashboardStateImplCopyWith<_$RonposDashboardStateImpl>
      get copyWith =>
          __$$RonposDashboardStateImplCopyWithImpl<_$RonposDashboardStateImpl>(
              this, _$identity);
}

abstract class _RonposDashboardState implements RonposDashboardState {
  const factory _RonposDashboardState(
      {required final DasboardState status,
      required final DashboardEntity dashboardData,
      required final String message}) = _$RonposDashboardStateImpl;

  @override
  DasboardState get status;
  @override
  DashboardEntity get dashboardData;
  @override
  String get message;

  /// Create a copy of RonposDashboardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RonposDashboardStateImplCopyWith<_$RonposDashboardStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
