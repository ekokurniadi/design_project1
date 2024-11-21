// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_pos/core/config/database/realm_database.dart' as _i338;
import 'package:flutter_pos/core/config/database/realm_database_impl.dart'
    as _i147;
import 'package:flutter_pos/core/module/storage_module.dart' as _i438;
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
    final storageModule = _$StorageModule();
    gh.singleton<_i966.Realm>(() => storageModule.realm);
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => storageModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i338.RealmDatabase>(
        () => _i147.RealmDatabaseImpl(gh<_i966.Realm>()));
    return this;
  }
}

class _$StorageModule extends _i438.StorageModule {}
