import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';

abstract class DashboardRepository {
  Future<Either<Failures,DashboardModel>> getDashboardData(int id);
  Future<Either<Failures,DashboardModel>> getDashboardDataFromRemote(int id);
}