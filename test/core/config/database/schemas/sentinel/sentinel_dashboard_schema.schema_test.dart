import 'package:flutter_pos/core/config/database/schemas/sentinel/sentinel_dashboard_schema.schema.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return sentinel dashboard model on extension', () {
    final sentinelDashboardSchema = SentinelDashboardSchema(
      1,
      1,
      mode: 'SENTINEL',
    );
    // act 
    final result = sentinelDashboardSchema.schemaToModel();

    // assert
    expect(result, isA<SentinelDashboardModel>());
    expect(result.id, sentinelDashboardSchema.id);
  });
}
