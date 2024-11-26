// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_management_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserManagementModel _$UserManagementModelFromJson(Map<String, dynamic> json) {
  return _UserManagementModel.fromJson(json);
}

/// @nodoc
mixin _$UserManagementModel {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this UserManagementModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserManagementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserManagementModelCopyWith<UserManagementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserManagementModelCopyWith<$Res> {
  factory $UserManagementModelCopyWith(
          UserManagementModel value, $Res Function(UserManagementModel) then) =
      _$UserManagementModelCopyWithImpl<$Res, UserManagementModel>;
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class _$UserManagementModelCopyWithImpl<$Res, $Val extends UserManagementModel>
    implements $UserManagementModelCopyWith<$Res> {
  _$UserManagementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserManagementModel
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
abstract class _$$UserManagementModelImplCopyWith<$Res>
    implements $UserManagementModelCopyWith<$Res> {
  factory _$$UserManagementModelImplCopyWith(_$UserManagementModelImpl value,
          $Res Function(_$UserManagementModelImpl) then) =
      __$$UserManagementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String name});
}

/// @nodoc
class __$$UserManagementModelImplCopyWithImpl<$Res>
    extends _$UserManagementModelCopyWithImpl<$Res, _$UserManagementModelImpl>
    implements _$$UserManagementModelImplCopyWith<$Res> {
  __$$UserManagementModelImplCopyWithImpl(_$UserManagementModelImpl _value,
      $Res Function(_$UserManagementModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserManagementModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$UserManagementModelImpl(
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
@JsonSerializable()
class _$UserManagementModelImpl implements _UserManagementModel {
  const _$UserManagementModelImpl({this.id, required this.name});

  factory _$UserManagementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserManagementModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String name;

  @override
  String toString() {
    return 'UserManagementModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserManagementModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UserManagementModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserManagementModelImplCopyWith<_$UserManagementModelImpl> get copyWith =>
      __$$UserManagementModelImplCopyWithImpl<_$UserManagementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserManagementModelImplToJson(
      this,
    );
  }
}

abstract class _UserManagementModel implements UserManagementModel {
  const factory _UserManagementModel(
      {final int? id, required final String name}) = _$UserManagementModelImpl;

  factory _UserManagementModel.fromJson(Map<String, dynamic> json) =
      _$UserManagementModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get name;

  /// Create a copy of UserManagementModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserManagementModelImplCopyWith<_$UserManagementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
