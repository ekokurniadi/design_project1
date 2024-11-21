import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_entity.codegen.freezed.dart';

@freezed
class SentinelDashboardEntity with _$SentinelDashboardEntity{
  const factory SentinelDashboardEntity({
    required int id,
    required String appMode,
    required int terminalId,
  }) = _SentinelDashboardEntity;
}