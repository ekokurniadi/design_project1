import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_entity.codegen.freezed.dart';

@freezed
class DashboardEntity with _$DashboardEntity{
  const factory DashboardEntity({
    required int id,
    required String appMode,
  }) = _DashboardEntity;
}