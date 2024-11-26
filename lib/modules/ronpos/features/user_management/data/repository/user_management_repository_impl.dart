import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/datasources/local/user_management_local_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/datasources/remote/user_management_remote_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/models/user_management_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/domain/repository/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserManagementRepository)
class UserManagementRepositoryImpl implements UserManagementRepository {
  const UserManagementRepositoryImpl(
  this._userManagementRemoteDataSource,
  this._userManagementLocalDataSource,
  );
  
  final UserManagementRemoteDataSource _userManagementRemoteDataSource;
  final UserManagementLocalDataSource _userManagementLocalDataSource;

  @override
  Future<Either<Failures, UserManagementModel>> getUserById(int id) async {
    //TODO: implements getUserById
    throw UnimplementedError();
  }
  @override
  Future<Either<Failures, List<UserManagementModel>>> getAllUsers(int page) async {
    //TODO: implements getAllUsers
    throw UnimplementedError();
  }
}