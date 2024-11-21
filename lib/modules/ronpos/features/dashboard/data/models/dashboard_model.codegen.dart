import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/entities/dashboard_entity.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_model.codegen.freezed.dart';
part 'dashboard_model.codegen.g.dart';

@freezed
class DashboardModel with _$DashboardModel{
  const factory DashboardModel({
    required int id,
    required String appMode,
  }) = _DashboardModel;

  factory DashboardModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardModelFromJson(json);
}


extension DashboardModelX on DashboardModel {
  DashboardEntity toEntity()=> DashboardEntity(id: id, appMode: appMode);
}

