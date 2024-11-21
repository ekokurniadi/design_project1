import 'package:dartz/dartz.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_from_remote_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../mocks.mocks.dart';

void main() {
  late GetDashboardDataFromRemoteUsecase sut;
  late DashboardRepository repository;

  setUp(() {
    repository = MockDashboardRepository();
    sut = GetDashboardDataFromRemoteUsecase(repository);
  });
  const tDashboardData = DashboardModel(id: 1, appMode: 'RONPOS');

  group('GetDashboardDataFromRemoteUsecase', () {
    test('should get remote data dashboard from repository', () async {
      //arrange
      when(repository.getDashboardDataFromRemote(1)).thenAnswer(
        (_) async => right(tDashboardData),
      );

      //act
      final result = await sut(1);

      //assert
      expect(result, right(tDashboardData));

      verify(repository.getDashboardDataFromRemote(1)).called(1);
      verifyNoMoreInteractions(repository);
    });
  });
}
