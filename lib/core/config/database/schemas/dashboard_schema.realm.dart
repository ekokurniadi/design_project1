// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_schema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class DashboardSchema extends _DashboardSchema
    with RealmEntity, RealmObjectBase, RealmObject {
  DashboardSchema(
    int id, {
    String? mode,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'mode', mode);
  }

  DashboardSchema._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => RealmObjectBase.set(this, 'id', value);

  @override
  String? get mode => RealmObjectBase.get<String>(this, 'mode') as String?;
  @override
  set mode(String? value) => RealmObjectBase.set(this, 'mode', value);

  @override
  Stream<RealmObjectChanges<DashboardSchema>> get changes =>
      RealmObjectBase.getChanges<DashboardSchema>(this);

  @override
  Stream<RealmObjectChanges<DashboardSchema>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DashboardSchema>(this, keyPaths);

  @override
  DashboardSchema freeze() =>
      RealmObjectBase.freezeObject<DashboardSchema>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'mode': mode.toEJson(),
    };
  }

  static EJsonValue _toEJson(DashboardSchema value) => value.toEJson();
  static DashboardSchema _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
      } =>
        DashboardSchema(
          fromEJson(id),
          mode: fromEJson(ejson['mode']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DashboardSchema._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, DashboardSchema, 'DashboardSchema', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('mode', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
