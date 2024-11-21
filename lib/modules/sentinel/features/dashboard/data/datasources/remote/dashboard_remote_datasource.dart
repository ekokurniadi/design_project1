import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:injectable/injectable.dart';

abstract class DashboardRemoteDataSource {
  Future<Either<Failures, SentinelDashboardModel>> getDashboardData(int id);
}

@LazySingleton(as: DashboardRemoteDataSource)
class DashboardRemoteDataSourceimpl implements DashboardRemoteDataSource {
  @override
  Future<Either<Failures, SentinelDashboardModel>> getDashboardData(
    int id,
  ) async {
    // TODO: implement getDashboardData
    throw UnimplementedError();
  }
}
