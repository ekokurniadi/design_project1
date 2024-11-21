import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:realm/realm.dart';

part 'sentinel_dashboard_schema.schema.realm.dart';

@RealmModel()
class _SentinelDashboardSchema {
  @PrimaryKey()
  late int id;
  late String? mode;
  late int terminalId;
}

extension SentinelDashboardSchemaX on SentinelDashboardSchema {
  SentinelDashboardModel schemaToModel() => SentinelDashboardModel(
        id: id,
        appMode: mode ?? '',
        terminalId: terminalId,
      );
}
