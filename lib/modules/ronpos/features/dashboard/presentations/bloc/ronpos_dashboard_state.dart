part of 'ronpos_dashboard_bloc.dart';

enum DasboardState { initial, loading, loaded, failure }

@freezed
class RonposDashboardState with _$RonposDashboardState {
  const factory RonposDashboardState({
    required DasboardState status,
    required DashboardEntity dashboardData,
    required String message,
  }) = _RonposDashboardState;

  factory RonposDashboardState.initial() => const RonposDashboardState(
        status: DasboardState.initial,
        dashboardData: DashboardEntity(
          id: 0,
          appMode: '',
        ),
        message: '',
      );
}
