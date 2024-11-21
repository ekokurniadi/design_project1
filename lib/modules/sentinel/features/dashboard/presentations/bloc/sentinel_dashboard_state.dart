part of 'sentinel_dashboard_bloc.dart';

enum DashboardState { initial, loading, loaded, failure }

@freezed
class SentinelDashboardState with _$SentinelDashboardState {
  const factory SentinelDashboardState({
    required DashboardState status,
    required SentinelDashboardEntity dashboardData,
    required String message,
  }) = _SentinelDashboardState;

  factory SentinelDashboardState.initial() => const SentinelDashboardState(
        status: DashboardState.initial,
        dashboardData: SentinelDashboardEntity(
          id: 0,
          appMode: '',
          terminalId: 0,
        ),
        message: '',
      );
}
