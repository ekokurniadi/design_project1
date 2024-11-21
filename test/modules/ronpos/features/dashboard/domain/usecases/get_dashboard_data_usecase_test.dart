import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../mocks.mocks.dart';

void main() {
  late GetDashboardDataUsecase sut;
  late MockDashboardRepository repository;

  setUp(() {
    repository = MockDashboardRepository();
    sut = GetDashboardDataUsecase(repository);
  });

  const tDashboardData = DashboardModel(id: 1, appMode: 'RONPOS');
  group('GetDashboardDataUsecase', () {
    test('should get local data dashboard from repository', () async {
      //arrange
      when(repository.getDashboardData(1)).thenAnswer(
        (_) async => right(tDashboardData),
      );

      //act
      final result = await sut(1);

      //assert
      expect(result, right(tDashboardData));

      verify(repository.getDashboardData(1)).called(1);
      verifyNoMoreInteractions(repository);
    });

    test('''should return failure when get local 
        data from remote repository failed''', () async {
      //arrange
      when(repository.getDashboardData(1)).thenAnswer(
        (_) async => left(ServerFailure(errorMessage: 'Internal Server Error')),
      );

      //act
      final result = await sut(1);

      //assert
      expect(result.isRight(), false);
      expect(result.isLeft(), true);

      verify(repository.getDashboardData(1)).called(1);
      verifyNoMoreInteractions(repository);
    });
  });
}
