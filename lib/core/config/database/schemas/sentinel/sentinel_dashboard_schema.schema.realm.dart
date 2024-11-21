// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sentinel_dashboard_schema.schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class SentinelDashboardSchema extends _SentinelDashboardSchema
    with RealmEntity, RealmObjectBase, RealmObject {
  SentinelDashboardSchema(
    int id,
    int terminalId, {
    String? mode,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'mode', mode);
    RealmObjectBase.set(this, 'terminalId', terminalId);
  }

  SentinelDashboardSchema._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get mode => RealmObjectBase.get<String>(this, 'mode') as String?;
  @override
  set mode(String? value) => RealmObjectBase.set(this, 'mode', value);

  @override
  int get terminalId => RealmObjectBase.get<int>(this, 'terminalId') as int;
  @override
  set terminalId(int value) => RealmObjectBase.set(this, 'terminalId', value);

  @override
  Stream<RealmObjectChanges<SentinelDashboardSchema>> get changes =>
      RealmObjectBase.getChanges<SentinelDashboardSchema>(this);

  @override
  Stream<RealmObjectChanges<SentinelDashboardSchema>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<SentinelDashboardSchema>(this, keyPaths);

  @override
  SentinelDashboardSchema freeze() =>
      RealmObjectBase.freezeObject<SentinelDashboardSchema>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'mode': mode.toEJson(),
      'terminalId': terminalId.toEJson(),
    };
  }

  static EJsonValue _toEJson(SentinelDashboardSchema value) => value.toEJson();
  static SentinelDashboardSchema _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'terminalId': EJsonValue terminalId,
      } =>
        SentinelDashboardSchema(
          fromEJson(id),
          fromEJson(terminalId),
          mode: fromEJson(ejson['mode']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(SentinelDashboardSchema._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, SentinelDashboardSchema,
        'SentinelDashboardSchema', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('mode', RealmPropertyType.string, optional: true),
      SchemaProperty('terminalId', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
