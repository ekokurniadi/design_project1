import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter_pos/core/config/database/realm_database.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/datasources/local/dashboard_local_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/datasources/remote/dashboard_remote_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_from_remote_usecase.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'package:mockito/annotations.dart';
import 'package:realm/realm.dart';

@GenerateMocks([
  Dio,
  DashboardRemoteDataSource,
  DashboardLocalDataSource,
  DashboardRepository,
  GetDashboardDataFromRemoteUsecase,
  GetDashboardDataUsecase,
  RealmDatabase,
  Realm,
  Connectivity,
])

void main() {}
