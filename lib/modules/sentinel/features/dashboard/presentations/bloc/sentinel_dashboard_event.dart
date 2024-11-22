part of 'sentinel_dashboard_bloc.dart';

@freezed
class SentinelDashboardEvent with _$SentinelDashboardEvent {
  const factory SentinelDashboardEvent.getDashboardById(
    int id,
  ) = _GetDashboardByIdEvent;
   const factory SentinelDashboardEvent.getDashboardFromRemoteById(
    int id,
  ) = _GetDashboardFromRemoteByIdEvent;
}