import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/entities/dashboard_entity.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.codegen.freezed.dart';
part 'dashboard_model.codegen.g.dart';

@freezed
class SentinelDashboardModel with _$SentinelDashboardModel {
  const factory SentinelDashboardModel({
    required int id,
    required String appMode,
    required int terminalId,
  }) = _SentinelDashboardModel;

  factory SentinelDashboardModel.fromJson(Map<String, dynamic> json) =>
      _$SentinelDashboardModelFromJson(json);
}

extension DashboardModelX on SentinelDashboardModel {
  SentinelDashboardEntity toEntity() => SentinelDashboardEntity(
        id: id,
        appMode: appMode,
        terminalId: terminalId,
      );
}
