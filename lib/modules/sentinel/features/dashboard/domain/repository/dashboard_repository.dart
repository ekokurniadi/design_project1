import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';

abstract class DashboardRepository {
  Future<Either<Failures, SentinelDashboardModel>> getDashboardData(int id);
  Future<Either<Failures, SentinelDashboardModel>> getDashboardDataFromRemote(
    int id,
  );
}
