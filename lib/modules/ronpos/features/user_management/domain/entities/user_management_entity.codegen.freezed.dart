// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_management_entity.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserManagementEntity {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Create a copy of UserManagementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserManagementEntityCopyWith<UserManagementEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementEntityCopyWith<$Res> {
  factory $UserManagementEntityCopyWith(UserManagementEntity value,
          $Res Function(UserManagementEntity) then) =
      _$UserManagementEntityCopyWithImpl<$Res, UserManagementEntity>;
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class _$UserManagementEntityCopyWithImpl<$Res,
        $Val extends UserManagementEntity>
    implements $UserManagementEntityCopyWith<$Res> {
  _$UserManagementEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserManagementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserManagementEntityImplCopyWith<$Res>
    implements $UserManagementEntityCopyWith<$Res> {
  factory _$$UserManagementEntityImplCopyWith(_$UserManagementEntityImpl value,
          $Res Function(_$UserManagementEntityImpl) then) =
      __$$UserManagementEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class __$$UserManagementEntityImplCopyWithImpl<$Res>
    extends _$UserManagementEntityCopyWithImpl<$Res, _$UserManagementEntityImpl>
    implements _$$UserManagementEntityImplCopyWith<$Res> {
  __$$UserManagementEntityImplCopyWithImpl(_$UserManagementEntityImpl _value,
      $Res Function(_$UserManagementEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$UserManagementEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserManagementEntityImpl implements _UserManagementEntity {
  const _$UserManagementEntityImpl({this.id, required this.name});

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString() {
    return 'UserManagementEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserManagementEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UserManagementEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserManagementEntityImplCopyWith<_$UserManagementEntityImpl>
      get copyWith =>
          __$$UserManagementEntityImplCopyWithImpl<_$UserManagementEntityImpl>(
              this, _$identity);
}

abstract class _UserManagementEntity implements UserManagementEntity {
  const factory _UserManagementEntity(
      {final int? id, required final String name}) = _$UserManagementEntityImpl;

  @override
  int? get id;
  @override
  String get name;

  /// Create a copy of UserManagementEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserManagementEntityImplCopyWith<_$UserManagementEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
