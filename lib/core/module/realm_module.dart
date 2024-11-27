import 'package:flutter_pos/core/config/database/schemas/realm_schemas_list.dart';
import 'package:flutter_pos/core/config/envi/envi.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

@module
abstract class RealmModule {
  @lazySingleton
  Realm provideRealm(Envi envi) {
    final schemas = RealmSchemas(envi).getSchemas;
    final config = Configuration.local(
      schemas,
      schemaVersion: schemas.length,
      shouldDeleteIfMigrationNeeded: true,
    );
    return Realm(config);
  }
}
