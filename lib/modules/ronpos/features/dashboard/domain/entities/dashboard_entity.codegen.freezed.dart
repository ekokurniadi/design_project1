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
mixin _$DashboardEntity {
  int get id => throw _privateConstructorUsedError;
  String get appMode => throw _privateConstructorUsedError;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardEntityCopyWith<DashboardEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEntityCopyWith<$Res> {
  factory $DashboardEntityCopyWith(
          DashboardEntity value, $Res Function(DashboardEntity) then) =
      _$DashboardEntityCopyWithImpl<$Res, DashboardEntity>;
  @useResult
  $Res call({int id, String appMode});
}

/// @nodoc
class _$DashboardEntityCopyWithImpl<$Res, $Val extends DashboardEntity>
    implements $DashboardEntityCopyWith<$Res> {
  _$DashboardEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMode = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardEntityImplCopyWith<$Res>
    implements $DashboardEntityCopyWith<$Res> {
  factory _$$DashboardEntityImplCopyWith(_$DashboardEntityImpl value,
          $Res Function(_$DashboardEntityImpl) then) =
      __$$DashboardEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String appMode});
}

/// @nodoc
class __$$DashboardEntityImplCopyWithImpl<$Res>
    extends _$DashboardEntityCopyWithImpl<$Res, _$DashboardEntityImpl>
    implements _$$DashboardEntityImplCopyWith<$Res> {
  __$$DashboardEntityImplCopyWithImpl(
      _$DashboardEntityImpl _value, $Res Function(_$DashboardEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMode = null,
  }) {
    return _then(_$DashboardEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      appMode: null == appMode
          ? _value.appMode
          : appMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DashboardEntityImpl implements _DashboardEntity {
  const _$DashboardEntityImpl({required this.id, required this.appMode});

  @override
  final int id;
  @override
  final String appMode;

  @override
  String toString() {
    return 'DashboardEntity(id: $id, appMode: $appMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appMode, appMode) || other.appMode == appMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, appMode);

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardEntityImplCopyWith<_$DashboardEntityImpl> get copyWith =>
      __$$DashboardEntityImplCopyWithImpl<_$DashboardEntityImpl>(
          this, _$identity);
}

abstract class _DashboardEntity implements DashboardEntity {
  const factory _DashboardEntity(
      {required final int id,
      required final String appMode}) = _$DashboardEntityImpl;

  @override
  int get id;
  @override
  String get appMode;

  /// Create a copy of DashboardEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardEntityImplCopyWith<_$DashboardEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
