import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/models/user_management_model.codegen.dart';

abstract class UserManagementRepository {
  Future<Either<Failures, UserManagementModel>> getUserById(int id);
  Future<Either<Failures, List<UserManagementModel>>> getAllUsers(int page);
}