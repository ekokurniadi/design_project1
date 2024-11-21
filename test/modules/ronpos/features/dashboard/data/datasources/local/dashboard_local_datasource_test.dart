import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/config/database/schemas/dashboard_schema.schema.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/datasources/local/dashboard_local_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../../helpers/test_helper.dart';
import '../../../../../../../mocks.mocks.dart';

void main() {
  late DashboardLocalDataSource sut;
  late MockRealmDatabase database;

  setUp(() {
    database = MockRealmDatabase();
    sut = DashboardLocalDataSourceImpl(database);
  });

   setUpAll(() async {
    await TestHelper.setupAll();
  });

  group('Ronpos DashboardLocalDataSource', () {
    test('should return Dashboard Model when success', () async {
      //arrange
      when(database.find<DashboardSchema, int>(1)).thenAnswer(
        (_) => DashboardSchema(
          1,
          mode: 'RONPOS',
        ),
      );

      //act
      final result = await sut.getDashboardData(1);

      //assert
      expect(
        result,
        right(
          const DashboardModel(
            id: 1,
            appMode: 'RONPOS',
          ),
        ),
      );

      expect(result.isLeft(), false);

      verify(database.find(1)).called(1);
    });
  });
}
