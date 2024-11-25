import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DashboardModel', () {
    test('should return DashboardModel fromJson', () {
      //arrange
      const json = <String, dynamic>{
        'id': 1,
        'app_mode': 'RONPOS',
      };

      //act
      final result = DashboardModel.fromJson(json);

      //assert
      expect(result, isA<DashboardModel>());
    });
  });
}
