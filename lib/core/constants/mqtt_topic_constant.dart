sealed class MqttTopicConstant {
  static const String attendance = 'hub/attendance';
  static const String autoEodTrigger = 'hub/auto_eod_trigger/alert';
  static const String cdsActivity = 'hub/pos/cdsactivity';
  static const String dayOperationClosed = 'hub/day_operation/closed';
  static const String dayOperationInitiated =
      'hub/day_operation/closing_initiated';
  static const String drawerSession = 'hub/drawersession';
  static const String fccAttendantSignOn = 'hub/fc_attendant/sign_on';
  static const String fccAttendantSignOff = 'hub/fc_attendant/sign_off';
  static const String fccPump = 'hub/fcc/pump';
  static const String fccGrades = 'hub/fcc/grades';
  static const String fuelFinalized = 'hub/transaction/fuelfinalized';
  static const String hubServiceHub = 'hub/service/hub';
  static const String hubServiceHubFcc = 'hub/service/hub-fcc';
  static const String hubServiceHubEps = 'hub/service/hub-eps';
  static const String outletSettingUpdated = 'hub/outletsetting/updated';
  static const String paymentCreated = 'hub/payment/created';
  static const String paymentUpdated = 'hub/payment/updated';
  static const String promotion = 'hub/promotion/updated';
  static const String receiptCreated = 'hub/receipt/created';
}