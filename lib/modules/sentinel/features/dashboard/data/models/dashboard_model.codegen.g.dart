// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'dashboard_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SentinelDashboardModelImpl _$$SentinelDashboardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SentinelDashboardModelImpl(
      id: (json['id'] as num).toInt(),
      appMode: json['app_mode'] as String,
      terminalId: (json['terminal_id'] as num).toInt(),
    );

Map<String, dynamic> _$$SentinelDashboardModelImplToJson(
        _$SentinelDashboardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'app_mode': instance.appMode,
      'terminal_id': instance.terminalId,
    };
