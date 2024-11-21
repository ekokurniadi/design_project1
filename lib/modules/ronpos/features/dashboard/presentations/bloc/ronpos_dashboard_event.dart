part of 'ronpos_dashboard_bloc.dart';

@freezed
class RonposDashboardEvent with _$RonposDashboardEvent {
  const factory RonposDashboardEvent.getDashboardById(
    int id,
  ) = _GetDashboardByIdEvent;
}
