import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/core/usecases/usecase.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/models/user_management_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/domain/repository/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAllUsersUseCase implements UseCase<List<UserManagementModel>, int>{
  const GetAllUsersUseCase(this._repository);
  final UserManagementRepository _repository;
  @override
  Future<Either<Failures, List<UserManagementModel>>> call(int page) async{
    return await _repository.getAllUsers(page);
  }
}