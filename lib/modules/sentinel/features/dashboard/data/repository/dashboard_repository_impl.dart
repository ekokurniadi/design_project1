import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/datasources/local/dashboard_local_datasource.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/datasources/remote/dashboard_remote_datasource.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  const DashboardRepositoryImpl(this._localDataSource, this._remoteDataSource);
  final DashboardRemoteDataSource _remoteDataSource;
  final DashboardLocalDataSource _localDataSource;

  @override
  Future<Either<Failures, SentinelDashboardModel>> getDashboardData(
    int id,
  ) async {
    return await _localDataSource.getDashboardData(id);
  }

  @override
  Future<Either<Failures, SentinelDashboardModel>> getDashboardDataFromRemote(
    int id,
  ) async {
    return await _remoteDataSource.getDashboardData(id);
  }
}
