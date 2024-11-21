// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_model.codegen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SentinelDashboardModel _$SentinelDashboardModelFromJson(
    Map<String, dynamic> json) {
  return _SentinelDashboardModel.fromJson(json);
}

/// @nodoc
mixin _$SentinelDashboardModel {
  int get id => throw _privateConstructorUsedError;
  String get appMode => throw _privateConstructorUsedError;
  int get terminalId => throw _privateConstructorUsedError;

  /// Serializes this SentinelDashboardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SentinelDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SentinelDashboardModelCopyWith<SentinelDashboardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SentinelDashboardModelCopyWith<$Res> {
  factory $SentinelDashboardModelCopyWith(SentinelDashboardModel value,
          $Res Function(SentinelDashboardModel) then) =
      _$SentinelDashboardModelCopyWithImpl<$Res, SentinelDashboardModel>;
  @useResult
  $Res call({int id, String appMode, int terminalId});
}

/// @nodoc
class _$SentinelDashboardModelCopyWithImpl<$Res,
        $Val extends SentinelDashboardModel>
    implements $SentinelDashboardModelCopyWith<$Res> {
  _$SentinelDashboardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SentinelDashboardModel
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
abstract class _$$SentinelDashboardModelImplCopyWith<$Res>
    implements $SentinelDashboardModelCopyWith<$Res> {
  factory _$$SentinelDashboardModelImplCopyWith(
          _$SentinelDashboardModelImpl value,
          $Res Function(_$SentinelDashboardModelImpl) then) =
      __$$SentinelDashboardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String appMode, int terminalId});
}

/// @nodoc
class __$$SentinelDashboardModelImplCopyWithImpl<$Res>
    extends _$SentinelDashboardModelCopyWithImpl<$Res,
        _$SentinelDashboardModelImpl>
    implements _$$SentinelDashboardModelImplCopyWith<$Res> {
  __$$SentinelDashboardModelImplCopyWithImpl(
      _$SentinelDashboardModelImpl _value,
      $Res Function(_$SentinelDashboardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SentinelDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? appMode = null,
    Object? terminalId = null,
  }) {
    return _then(_$SentinelDashboardModelImpl(
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
@JsonSerializable()
class _$SentinelDashboardModelImpl implements _SentinelDashboardModel {
  const _$SentinelDashboardModelImpl(
      {required this.id, required this.appMode, required this.terminalId});

  factory _$SentinelDashboardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SentinelDashboardModelImplFromJson(json);

  @override
  final int id;
  @override
  final String appMode;
  @override
  final int terminalId;

  @override
  String toString() {
    return 'SentinelDashboardModel(id: $id, appMode: $appMode, terminalId: $terminalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SentinelDashboardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.appMode, appMode) || other.appMode == appMode) &&
            (identical(other.terminalId, terminalId) ||
                other.terminalId == terminalId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, appMode, terminalId);

  /// Create a copy of SentinelDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SentinelDashboardModelImplCopyWith<_$SentinelDashboardModelImpl>
      get copyWith => __$$SentinelDashboardModelImplCopyWithImpl<
          _$SentinelDashboardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SentinelDashboardModelImplToJson(
      this,
    );
  }
}

abstract class _SentinelDashboardModel implements SentinelDashboardModel {
  const factory _SentinelDashboardModel(
      {required final int id,
      required final String appMode,
      required final int terminalId}) = _$SentinelDashboardModelImpl;

  factory _SentinelDashboardModel.fromJson(Map<String, dynamic> json) =
      _$SentinelDashboardModelImpl.fromJson;

  @override
  int get id;
  @override
  String get appMode;
  @override
  int get terminalId;

  /// Create a copy of SentinelDashboardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SentinelDashboardModelImplCopyWith<_$SentinelDashboardModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
