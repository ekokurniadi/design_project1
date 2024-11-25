import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/repository/dashboard_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../mocks.mocks.dart';

void main() {
  late MockDashboardLocalDataSource localDataSource;
  late MockDashboardRemoteDataSource remoteDataSource;
  late DashboardRepository repository;

  setUp(() {
    localDataSource = MockDashboardLocalDataSource();
    remoteDataSource = MockDashboardRemoteDataSource();
    repository = DashboardRepositoryImpl(
      localDataSource,
      remoteDataSource,
    );
  });

  const int id = 1;
  const DashboardModel tDashboardModel = DashboardModel(
    id: 1,
    appMode: 'RONPOS',
  );
  final Failures tFailure = ServerFailure(
    errorMessage: 'Unable to fetch data',
  );

  group('DashboardRepository', () {
    test('should return DashboardModel when getDashboardData success ',
        () async {
      //arrange
      when(localDataSource.getDashboardData(id)).thenAnswer(
        (_) async => right(
          tDashboardModel,
        ),
      );

      //act
      final result = await repository.getDashboardData(id);

      //assert
      expect(result.isRight(), true);
    });

    test('should return Failure when getDashboardData fail ',
        () async {
      //arrange
      when(localDataSource.getDashboardData(id)).thenAnswer(
        (_) async => left(
          tFailure,
        ),
      );

      //act
      final result = await repository.getDashboardData(id);

      //assert
      expect(result.isLeft(), true);
    });


    test('should return DashboardModel when getDashboardDataFromRemote success',
        () async {
      //arrange
      when(remoteDataSource.getDashboardData(id)).thenAnswer(
        (_) async => right(
          tDashboardModel,
        ),
      );

      //act
      final result = await repository.getDashboardDataFromRemote(id);

      //assert
      expect(result.isRight(), true);
    });

    test('should return Failure when getDashboardDataFromRemote fail ',
        () async {
      //arrange
      when(remoteDataSource.getDashboardData(id)).thenAnswer(
        (_) async => left(
          tFailure,
        ),
      );

      //act
      final result = await repository.getDashboardDataFromRemote(id);

      //assert
      expect(result.isLeft(), true);
    });
  });
}
