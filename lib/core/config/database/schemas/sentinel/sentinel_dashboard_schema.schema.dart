import 'package:realm/realm.dart';

part 'sentinel_dashboard_schema.schema.realm.dart';

@RealmModel()
class _SentinelDashboardSchema {
  @PrimaryKey()
  late int id;
  late String? mode;
  late int terminalId;
}
