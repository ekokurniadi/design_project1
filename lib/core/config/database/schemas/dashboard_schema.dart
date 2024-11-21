import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:realm/realm.dart';

part 'dashboard_schema.realm.dart';

@RealmModel()
class _DashboardSchema {
  @PrimaryKey()
  late int id;
  late String? mode;
}

extension DashboardSchemaX on DashboardSchema {
  DashboardModel schemaToModel() => DashboardModel(
        id: id,
        appMode: mode ?? '',
      );
}
