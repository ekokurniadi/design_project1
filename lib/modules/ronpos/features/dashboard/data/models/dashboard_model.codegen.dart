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


