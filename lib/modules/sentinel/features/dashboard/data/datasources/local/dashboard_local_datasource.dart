import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/config/database/realm_database.dart';
import 'package:flutter_pos/core/config/database/schemas/sentinel/sentinel_dashboard_schema.schema.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/core/helpers/assertion_helper.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:injectable/injectable.dart';

abstract class DashboardLocalDataSource {
  Future<Either<Failures, SentinelDashboardModel>> getDashboardData(int id);
}

@LazySingleton(as: DashboardLocalDataSource)
class DashboardLocalDataSourceImpl implements DashboardLocalDataSource {
  const DashboardLocalDataSourceImpl(this._database);
  final RealmDatabase _database;
  @override
  Future<Either<Failures, SentinelDashboardModel>> getDashboardData(
    int id,
  ) async {
    try {
      final result = _database.find<SentinelDashboardSchema, int>(id);
      if (AssertionHelper.isEmpty(result)) {
        return left(DatabaseFailure(errorMessage: 'Data not found'));
      }
      return right(result!.schemaToModel());
    } catch (e) {
      return left(DatabaseFailure(errorMessage: e.toString()));
    }
  }
}
