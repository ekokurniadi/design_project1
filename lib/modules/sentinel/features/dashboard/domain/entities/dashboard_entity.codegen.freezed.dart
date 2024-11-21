// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_entity.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SentinelDashboardEntity {
  int get id => throw _privateConstructorUsedError;
  String get appMode => throw _privateConstructorUsedError;
  int get terminalId => throw _privateConstructorUsedError;

  /// Create a copy of SentinelDashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentinelDashboardEntityCopyWith<SentinelDashboardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentinelDashboardEntityCopyWith<$Res> {
  factory $SentinelDashboardEntityCopyWith(SentinelDashboardEntity value,
          $Res Function(SentinelDashboardEntity) then) =
      _$SentinelDashboardEntityCopyWithImpl<$Res, SentinelDashboardEntity>;
  @useResult
  $Res call({int id, String appMode, int terminalId});
}

/// @nodoc
class _$SentinelDashboardEntityCopyWithImpl<$Res,
        $Val extends SentinelDashboardEntity>
    implements $SentinelDashboardEntityCopyWith<$Res> {
  _$SentinelDashboardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentinelDashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMode = null,
    Object? terminalId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appMode: null == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String,
      terminalId: null == terminalId
          ? _value.terminalId
          : terminalId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SentinelDashboardEntityImplCopyWith<$Res>
    implements $SentinelDashboardEntityCopyWith<$Res> {
  factory _$$SentinelDashboardEntityImplCopyWith(
          _$SentinelDashboardEntityImpl value,
          $Res Function(_$SentinelDashboardEntityImpl) then) =
      __$$SentinelDashboardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String appMode, int terminalId});
}

/// @nodoc
class __$$SentinelDashboardEntityImplCopyWithImpl<$Res>
    extends _$SentinelDashboardEntityCopyWithImpl<$Res,
        _$SentinelDashboardEntityImpl>
    implements _$$SentinelDashboardEntityImplCopyWith<$Res> {
  __$$SentinelDashboardEntityImplCopyWithImpl(
      _$SentinelDashboardEntityImpl _value,
      $Res Function(_$SentinelDashboardEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentinelDashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMode = null,
    Object? terminalId = null,
  }) {
    return _then(_$SentinelDashboardEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appMode: null == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String,
      terminalId: null == terminalId
          ? _value.terminalId
          : terminalId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SentinelDashboardEntityImpl implements _SentinelDashboardEntity {
  const _$SentinelDashboardEntityImpl(
      {required this.id, required this.appMode, required this.terminalId});

  @override
  final int id;
  @override
  final String appMode;
  @override
  final int terminalId;

  @override
  String toString() {
    return 'SentinelDashboardEntity(id: $id, appMode: $appMode, terminalId: $terminalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentinelDashboardEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appMode, appMode) || other.appMode == appMode) &&
            (identical(other.terminalId, terminalId) ||
                other.terminalId == terminalId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, appMode, terminalId);

  /// Create a copy of SentinelDashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentinelDashboardEntityImplCopyWith<_$SentinelDashboardEntityImpl>
      get copyWith => __$$SentinelDashboardEntityImplCopyWithImpl<
          _$SentinelDashboardEntityImpl>(this, _$identity);
}

abstract class _SentinelDashboardEntity implements SentinelDashboardEntity {
  const factory _SentinelDashboardEntity(
      {required final int id,
      required final String appMode,
      required final int terminalId}) = _$SentinelDashboardEntityImpl;

  @override
  int get id;
  @override
  String get appMode;
  @override
  int get terminalId;

  /// Create a copy of SentinelDashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentinelDashboardEntityImplCopyWith<_$SentinelDashboardEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
