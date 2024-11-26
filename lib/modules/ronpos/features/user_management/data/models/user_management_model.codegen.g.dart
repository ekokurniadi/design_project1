// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'user_management_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserManagementModelImpl _$$UserManagementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserManagementModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$UserManagementModelImplToJson(
        _$UserManagementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
