import 'package:flutter_pos/modules/ronpos/features/dashboard/data/datasources/remote/dashboard_remote_datasource.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DashboardRemoteDataSource dataSource;

  setUp(() {
    dataSource = DashboardRemoteDataSourceimpl();
  });
  group('DashboardRemoteDataSource', () {
    test('should throw UnimplementedError when method not implemented',
        () async {
      expectLater(
        () async => await dataSource.getDashboardData(1),
        throwsUnimplementedError,
      );
    });
  });
}
