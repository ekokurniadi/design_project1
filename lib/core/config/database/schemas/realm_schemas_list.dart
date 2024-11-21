import 'package:flutter_pos/core/config/database/schemas/dashboard_schema.schema.dart';
import 'package:flutter_pos/core/config/database/schemas/sentinel/sentinel_dashboard_schema.schema.dart';
import 'package:flutter_pos/core/config/envi/envi.dart';
import 'package:flutter_pos/core/constants/app_constant.dart';
import 'package:realm/realm.dart';

List<SchemaObject> get getSchemas {
  final appMode = Envi.getString('APP_MODE');
  if (appMode == AppConstant.appModeRonpos) {
    return _ronpos;
  } else if (appMode == AppConstant.appModeSentinel) {
    return _sentinel;
  } else {
    throw Exception('Invalid APP_MODE: $appMode');
  }
}

List<SchemaObject> _ronpos = [DashboardSchema.schema];
List<SchemaObject> _sentinel = [SentinelDashboardSchema.schema];
