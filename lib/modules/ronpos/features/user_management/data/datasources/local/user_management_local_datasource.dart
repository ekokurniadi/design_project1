import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/models/user_management_model.codegen.dart';
import 'package:injectable/injectable.dart';

abstract class UserManagementLocalDataSource {
  Future<Either<Failures, UserManagementModel>> getUserById(int id);
  Future<Either<Failures, List<UserManagementModel>>> getAllUsers(int page);
}

@LazySingleton(as: UserManagementLocalDataSource)
class UserManagementLocalDataSourceImpl
    implements UserManagementLocalDataSource {
  const UserManagementLocalDataSourceImpl();

  @override
  Future<Either<Failures, UserManagementModel>> getUserById(int id) async {
    //TODO: implements getUserById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<UserManagementModel>>> getAllUsers(
    int page,
  ) async {
    //TODO: implements getAllUsers
    throw UnimplementedError();
  }
}
