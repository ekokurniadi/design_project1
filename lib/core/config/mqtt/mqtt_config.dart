import 'package:flutter_pos/core/constants/mqtt_topic_constant.dart';
import 'package:injectable/injectable.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';

@lazySingleton
class MqttConfig {
  static late MqttServerClient mqttClient;

  Future<MqttClientConnectionStatus?> init({
    required String hostname,
    required String clientId,
  }) async {
    mqttClient = MqttServerClient(hostname, clientId);
    mqttClient.keepAlivePeriod = 60;
    mqttClient.autoReconnect = true;
    mqttClient.setProtocolV311();
    mqttClient.resubscribeOnAutoReconnect = true;
    return await mqttClient.connect();
  }

  Future<MqttClientConnectionStatus?> reconnect({
    required String hostname,
    required String clientId,
  }) async {
    return await init(hostname: hostname, clientId: clientId);
  }

  void disconnect() {
    mqttClient.disconnect();
  }

  void subscribeAllTopic() {
    mqttClient.subscribe(
      MqttTopicConstant.attendance,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.autoEodTrigger,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.cdsActivity,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.dayOperationClosed,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.dayOperationInitiated,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.drawerSession,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.fccAttendantSignOn,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.fccAttendantSignOff,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.fccPump,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.fccGrades,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.fuelFinalized,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.hubServiceHub,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.hubServiceHubFcc,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.hubServiceHubEps,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.outletSettingUpdated,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.paymentCreated,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.paymentUpdated,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.promotion,
      MqttQos.atLeastOnce,
    );
    mqttClient.subscribe(
      MqttTopicConstant.receiptCreated,
      MqttQos.atLeastOnce,
    );
  }
}
