import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/entities/dashboard_entity.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/presentations/bloc/ronpos_dashboard_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../helpers/helper.dart';
import '../../../../../../mocks.mocks.dart';

void main() {
  late RonposDashboardBloc sut;
  late MockGetDashboardDataFromRemoteUsecase getDashboardDataFromRemoteUsecase;
  late MockGetDashboardDataUsecase getDashboardDataUsecase;
  late DashboardModel expectedModel;

  setUp(() {
    getDashboardDataFromRemoteUsecase = MockGetDashboardDataFromRemoteUsecase();
    getDashboardDataUsecase = MockGetDashboardDataUsecase();
    sut = RonposDashboardBloc(
      getDashboardDataFromRemoteUsecase,
      getDashboardDataUsecase,
    );
    expectedModel = const DashboardModel(id: 1, appMode: 'RONPOS');
  });

  setUpAll(() async {
    await TestHelper.setupAll();
  });

  group('RonposDashboardBloc', () {
    test('initial state is correct', () {
      expect(sut.state.status, DasboardState.initial);
    });

    group('Remote', () {
      blocTest(
        'should emit [DashboardState.loading,DashboardState.failure] on calling',
        build: () {
          return sut;
        },
        setUp: () {
          when(getDashboardDataFromRemoteUsecase(1)).thenAnswer(
            (_) async => left(
              ServerFailure(errorMessage: 'Internal Server Error'),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const RonposDashboardEvent.getDashboardFromRemoteById(1),
        ),
        expect: () => [
          const RonposDashboardState(
            status: DasboardState.loading,
            dashboardData: DashboardEntity(id: 0, appMode: ''),
            message: '',
          ),
          const RonposDashboardState(
            status: DasboardState.failure,
            dashboardData: DashboardEntity(id: 0, appMode: ''),
            message: 'Internal Server Error',
          ),
        ],
      );

      blocTest(
        'should emit [DashboardState.loading,DashboardState.loaded] on calling',
        build: () {
          return sut;
        },
        setUp: () {
          when(getDashboardDataFromRemoteUsecase(1)).thenAnswer(
            (_) async => right(
              const DashboardModel(id: 1, appMode: 'RONPOS'),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const RonposDashboardEvent.getDashboardFromRemoteById(1),
        ),
        expect: () => [
          const RonposDashboardState(
            status: DasboardState.loading,
            dashboardData: DashboardEntity(id: 0, appMode: ''),
            message: '',
          ),
          RonposDashboardState(
            status: DasboardState.loaded,
            dashboardData: expectedModel.toEntity(),
            message: '',
          ),
        ],
      );
    });
  
  group('Local', () {
      blocTest(
        'should emit [DashboardState.loading,DashboardState.failure] on calling',
        build: () {
          return sut;
        },
        setUp: () {
          when(getDashboardDataUsecase(1)).thenAnswer(
            (_) async => left(
              DatabaseFailure(errorMessage: 'Data not found'),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const RonposDashboardEvent.getDashboardById(1),
        ),
        expect: () => [
          const RonposDashboardState(
            status: DasboardState.loading,
            dashboardData: DashboardEntity(id: 0, appMode: ''),
            message: '',
          ),
          const RonposDashboardState(
            status: DasboardState.failure,
            dashboardData: DashboardEntity(id: 0, appMode: ''),
            message: 'Data not found',
          ),
        ],
      );

      blocTest(
        'should emit [DashboardState.loading,DashboardState.loaded] on calling',
        build: () {
          return sut;
        },
        setUp: () {
          when(getDashboardDataUsecase(1)).thenAnswer(
            (_) async => right(
              const DashboardModel(id: 1, appMode: 'RONPOS'),
            ),
          );
        },
        act: (bloc) => bloc.add(
          const RonposDashboardEvent.getDashboardById(1),
        ),
        expect: () => [
          const RonposDashboardState(
            status: DasboardState.loading,
            dashboardData: DashboardEntity(id: 0, appMode: ''),
            message: '',
          ),
          RonposDashboardState(
            status: DasboardState.loaded,
            dashboardData: expectedModel.toEntity(),
            message: '',
          ),
        ],
      );
    });
  
  });
}
