import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_management_model.codegen.freezed.dart';
part 'user_management_model.codegen.g.dart';

@freezed
class UserManagementModel with _$UserManagementModel {
  const factory UserManagementModel({
    int? id,
    required String name,
  }) = _UserManagementModel;

  factory UserManagementModel.fromJson(Map<String, dynamic> json) => _$UserManagementModelFromJson(json);
}