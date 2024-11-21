import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pos/core/helpers/internet_helper.dart';
import 'package:flutter_pos/injector.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/data/models/dashboard_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/entities/dashboard_entity.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_from_remote_usecase.dart';
import 'package:flutter_pos/modules/ronpos/features/dashboard/domain/usecases/get_dashboard_data_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ronpos_dashboard_event.dart';
part 'ronpos_dashboard_state.dart';
part 'ronpos_dashboard_bloc.freezed.dart';

@injectable
class RonposDashboardBloc
    extends Bloc<RonposDashboardEvent, RonposDashboardState> {
  RonposDashboardBloc(
    this._getDashboardDataFromRemoteUsecase,
    this._getDashboardDataUsecase,
  ) : super(RonposDashboardState.initial()) {
    on<_GetDashboardByIdEvent>(_onGetDashboardById);
  }

  FutureOr<void> _onGetDashboardById(
    _GetDashboardByIdEvent event,
    Emitter<RonposDashboardState> emit,
  ) async {
    emit(state.copyWith(status: DasboardState.loading));

    final result = await getIt<InternetHelper>().isConnected
        ? await _getDashboardDataFromRemoteUsecase(event.id)
        : await _getDashboardDataUsecase(event.id);

    result.fold(
      (l) => emit(
        state.copyWith(
          status: DasboardState.failure,
          message: l.errorMessage,
        ),
      ),
      (r) => emit(
        state.copyWith(
          status: DasboardState.loaded,
          dashboardData: r.toEntity(),
        ),
      ),
    );
  }

  final GetDashboardDataFromRemoteUsecase _getDashboardDataFromRemoteUsecase;
  final GetDashboardDataUsecase _getDashboardDataUsecase;
}
