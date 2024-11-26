import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_management_entity.codegen.freezed.dart';

@freezed
class UserManagementEntity with _$UserManagementEntity {
  const factory UserManagementEntity({
    int? id,
    required String name,
  }) = _UserManagementEntity;
}
