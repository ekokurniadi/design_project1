import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/core/usecases/usecase.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDashboardDataFromRemoteUsecase implements UseCase<DashboardModel, int>{
  const GetDashboardDataFromRemoteUsecase(this._repository);
  final DashboardRepository _repository;
  @override
  Future<Either<Failures, DashboardModel>> call(int params) async{
    return await _repository.getDashboardDataFromRemote(params);
  }
}