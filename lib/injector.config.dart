// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:flutter_pos/core/config/database/realm_database.dart' as _i338;
import 'package:flutter_pos/core/config/database/realm_database_impl.dart'
    as _i147;
import 'package:flutter_pos/core/config/envi/envi.dart' as _i275;
import 'package:flutter_pos/core/helpers/internet_helper.dart' as _i1062;
import 'package:flutter_pos/core/module/preferences_module.dart' as _i709;
import 'package:flutter_pos/core/module/realm_module.dart' as _i46;
import 'package:flutter_pos/core/module/utilities_module.dart' as _i106;
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/datasources/local/dashboard_local_datasource.dart'
    as _i1012;
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/datasources/remote/dashboard_remote_datasource.dart'
    as _i89;
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/repository/dashboard_repository_impl.dart'
    as _i153;
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/repository/dashboard_repository.dart'
    as _i799;
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_from_remote_usecase.dart'
    as _i733;
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart'
    as _i756;
import 'package:flutter_pos/modules/ronpos/features/dashboard/presentations/bloc/ronpos_dashboard_bloc.dart'
    as _i1025;
import 'package:flutter_pos/modules/ronpos/features/user_management/data/datasources/local/user_management_local_datasource.dart'
    as _i145;
import 'package:flutter_pos/modules/ronpos/features/user_management/data/datasources/remote/user_management_remote_datasource.dart'
    as _i736;
import 'package:flutter_pos/modules/ronpos/features/user_management/data/repository/user_management_repository_impl.dart'
    as _i276;
import 'package:flutter_pos/modules/ronpos/features/user_management/domain/repository/user_management_repository.dart'
    as _i106;
import 'package:flutter_pos/modules/ronpos/features/user_management/domain/usecases/get_all_users_usecase.dart'
    as _i357;
import 'package:flutter_pos/modules/ronpos/features/user_management/domain/usecases/get_user_by_id_usecase.dart'
    as _i167;
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/datasources/local/dashboard_local_datasource.dart'
    as _i1037;
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/datasources/remote/dashboard_remote_datasource.dart'
    as _i647;
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/repository/dashboard_repository_impl.dart'
    as _i177;
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/repository/dashboard_repository.dart'
    as _i683;
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/usecases/get_dashboard_data_from_remote_usecase.dart'
    as _i363;
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart'
    as _i633;
import 'package:flutter_pos/modules/sentinel/features/dashboard/presentations/bloc/sentinel_dashboard_bloc.dart'
    as _i294;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:realm/realm.dart' as _i966;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final preferencesModule = _$PreferencesModule();
    final utilitiesModule = _$UtilitiesModule();
    final realmModule = _$RealmModule();
    gh.singleton<_i275.Envi>(() => _i275.Envi());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => preferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i895.Connectivity>(() => utilitiesModule.connectivity);
    gh.lazySingleton<_i89.DashboardRemoteDataSource>(
        () => _i89.DashboardRemoteDataSourceimpl());
    gh.lazySingleton<_i145.UserManagementLocalDataSource>(
        () => const _i145.UserManagementLocalDataSourceImpl());
    gh.singleton<_i966.Realm>(() => realmModule.provideRealm(gh<_i275.Envi>()));
    gh.lazySingleton<_i647.DashboardRemoteDataSource>(
        () => _i647.DashboardRemoteDataSourceimpl());
    gh.lazySingleton<_i736.UserManagementRemoteDataSource>(
        () => const _i736.UserManagementRemoteDataSourceImpl());
    gh.lazySingleton<_i1062.InternetHelper>(
        () => _i1062.InternetHelper(gh<_i895.Connectivity>()));
    gh.lazySingleton<_i338.RealmDatabase>(
        () => _i147.RealmDatabaseImpl(gh<_i966.Realm>()));
    gh.lazySingleton<_i106.UserManagementRepository>(
        () => _i276.UserManagementRepositoryImpl(
              gh<_i736.UserManagementRemoteDataSource>(),
              gh<_i145.UserManagementLocalDataSource>(),
            ));
    gh.factory<_i167.GetUserByIdUseCase>(
        () => _i167.GetUserByIdUseCase(gh<_i106.UserManagementRepository>()));
    gh.factory<_i357.GetAllUsersUseCase>(
        () => _i357.GetAllUsersUseCase(gh<_i106.UserManagementRepository>()));
    gh.lazySingleton<_i1037.DashboardLocalDataSource>(
        () => _i1037.DashboardLocalDataSourceImpl(gh<_i338.RealmDatabase>()));
    gh.lazySingleton<_i1012.DashboardLocalDataSource>(
        () => _i1012.DashboardLocalDataSourceImpl(gh<_i338.RealmDatabase>()));
    gh.lazySingleton<_i683.DashboardRepository>(
        () => _i177.DashboardRepositoryImpl(
              gh<_i1037.DashboardLocalDataSource>(),
              gh<_i647.DashboardRemoteDataSource>(),
            ));
    gh.factory<_i633.GetDashboardDataUsecase>(
        () => _i633.GetDashboardDataUsecase(gh<_i683.DashboardRepository>()));
    gh.factory<_i363.GetDashboardDataFromRemoteUsecase>(() =>
        _i363.GetDashboardDataFromRemoteUsecase(
            gh<_i683.DashboardRepository>()));
    gh.lazySingleton<_i799.DashboardRepository>(
        () => _i153.DashboardRepositoryImpl(
              gh<_i1012.DashboardLocalDataSource>(),
              gh<_i89.DashboardRemoteDataSource>(),
            ));
    gh.factory<_i294.SentinelDashboardBloc>(() => _i294.SentinelDashboardBloc(
          gh<_i363.GetDashboardDataFromRemoteUsecase>(),
          gh<_i633.GetDashboardDataUsecase>(),
        ));
    gh.factory<_i756.GetDashboardDataUsecase>(
        () => _i756.GetDashboardDataUsecase(gh<_i799.DashboardRepository>()));
    gh.factory<_i733.GetDashboardDataFromRemoteUsecase>(() =>
        _i733.GetDashboardDataFromRemoteUsecase(
            gh<_i799.DashboardRepository>()));
    gh.factory<_i1025.RonposDashboardBloc>(() => _i1025.RonposDashboardBloc(
          gh<_i733.GetDashboardDataFromRemoteUsecase>(),
          gh<_i756.GetDashboardDataUsecase>(),
        ));
    return this;
  }
}

class _$PreferencesModule extends _i709.PreferencesModule {}

class _$UtilitiesModule extends _i106.UtilitiesModule {}

class _$RealmModule extends _i46.RealmModule {}
