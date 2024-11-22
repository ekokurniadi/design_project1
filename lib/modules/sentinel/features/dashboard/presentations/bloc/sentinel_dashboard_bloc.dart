import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos/core/helpers/internet_helper.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/entities/dashboard_entity.codegen.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/usecases/get_dashboard_data_from_remote_usecase.dart';
import 'package:flutter_pos/modules/sentinel/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sentinel_dashboard_event.dart';
part 'sentinel_dashboard_state.dart';
part 'sentinel_dashboard_bloc.freezed.dart';

@injectable
class SentinelDashboardBloc
    extends Bloc<SentinelDashboardEvent, SentinelDashboardState> {
  SentinelDashboardBloc(
    this._getDashboardDataFromRemoteUsecase,
    this._getDashboardDataUsecase,
  ) : super(SentinelDashboardState.initial()) {
    on<_GetDashboardByIdEvent>(_onGetDashboardById);
  }

  FutureOr<void> _onGetDashboardById(
    _GetDashboardByIdEvent event,
    Emitter<SentinelDashboardState> emit,
  ) async {
    emit(state.copyWith(status: DashboardState.loading));

    final result = await InternetHelper.isConnected
        ? await _getDashboardDataFromRemoteUsecase(event.id)
        : await _getDashboardDataUsecase(event.id);

    result.fold(
      (l) => emit(
        state.copyWith(
          status: DashboardState.failure,
          message: l.errorMessage,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: DashboardState.loaded,
          dashboardData: r.toEntity(),
        ),
      ),
    );
  }

  final GetDashboardDataFromRemoteUsecase _getDashboardDataFromRemoteUsecase;
  final GetDashboardDataUsecase _getDashboardDataUsecase;
}
