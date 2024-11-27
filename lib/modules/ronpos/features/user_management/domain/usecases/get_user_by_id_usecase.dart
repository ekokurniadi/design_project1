import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/core/usecases/usecase.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/data/models/user_management_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/user_management/domain/repository/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserByIdUseCase implements UseCase<UserManagementModel, int> {
  const GetUserByIdUseCase(this._repository);
  final UserManagementRepository _repository;
  @override
  Future<Either<Failures, UserManagementModel>> call(int id) async {
    return await _repository.getUserById(id);
  }
}
