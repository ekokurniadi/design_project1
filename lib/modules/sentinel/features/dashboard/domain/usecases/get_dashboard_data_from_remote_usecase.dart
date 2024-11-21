import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/core/usecases/usecase.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetDashboardDataFromRemoteUsecase
    implements UseCase<SentinelDashboardModel, int> {
  const GetDashboardDataFromRemoteUsecase(this._repository);
  final DashboardRepository _repository;
  @override
  Future<Either<Failures, SentinelDashboardModel>> call(int params) async {
    return await _repository.getDashboardDataFromRemote(params);
  }
}
