import 'package:flutter_pos/core/config/database/schemas/dashboard_schema.schema.dart';
import 'package:flutter_pos/core/config/database/schemas/realm_schemas_list.dart';
import 'package:flutter_pos/core/config/database/schemas/sentinel/sentinel_dashboard_schema.schema.dart';
import 'package:flutter_pos/core/constants/app_constant.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../helpers/helper.dart';
import '../../../../mocks.mocks.dart';

void main() {
  late MockEnvi envi;
  late RealmSchemas realmSchemas;

  setUpAll(() async {
    await TestHelper.setupAll();
    envi = MockEnvi();
    realmSchemas = RealmSchemas(envi);
  });

  final ronposSchemas = [DashboardSchema.schema];
  final sentinelSchemas = [SentinelDashboardSchema.schema];

  group('get schemas with app mode ENV', () {
    test('should return list of ronpos schemas when appMode is RONPOS', () {
      //arrange
      when(envi.getString('APP_MODE')).thenAnswer(
        (_) => AppConstant.appModeRonpos,
      );
      //act
      final result = realmSchemas.getSchemas;

      //assert
      expect(result, ronposSchemas);
    });

    test('should return list of sentinel schemas when appMode is SENTINEL', () {
      //arrange
      when(envi.getString('APP_MODE')).thenAnswer(
        (_) => AppConstant.appModeSentinel,
      );
      //act
      final result = realmSchemas.getSchemas;

      //assert
      expect(result, sentinelSchemas);
    });

    test('should throw an Error when app mode is not unknown', () {
      //arrange
      when(envi.getString('APP_MODE')).thenAnswer(
        (_) => '',
      );

      expectLater(
        () => realmSchemas.getSchemas,
        throwsException,
      );
    });
  });
}
