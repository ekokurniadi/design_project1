import 'package:flutter_pos/core/config/database/schemas/realm_schemas_list.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class StorageModule {
  @lazySingleton
  @preResolve
  Future<SharedPreferences> get sharedPreferences async =>
      await SharedPreferences.getInstance();

  @singleton
  Realm get realm {
    final config = Configuration.local(
      getSchemas,
      schemaVersion: getSchemas.length,
    );
    return Realm(config);
  }
}
