import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/config/database/realm_database.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

@LazySingleton(as: RealmDatabase)
class RealmDatabaseImpl implements RealmDatabase {
  const RealmDatabaseImpl(this._realm);
  final Realm _realm;

  @override
  Future<Either<Failures, T>> add<T extends RealmObject>(T item) async {
    try {
      final result =  await _realm.writeAsync(() => _realm.add(item));
      return right(result);
    } catch (e) {
      return left(DatabaseFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<void> addList<T extends RealmObject>(Iterable<T> items) async {
    await _realm.writeAsync(() => _realm.addAll(items));
  }

  @override
  Future<void> delete<T extends RealmObject>(T item) async {
    await _realm.writeAsync(() => _realm.delete(item));
  }

  @override
  void dispose() {
    _realm.close();
  }

  @override
  T? find<T extends RealmObject, Param>(Param primaryKey) {
    return _realm.find<T>(primaryKey);
  }

  @override
  List<T> getAll<T extends RealmObject>() {
    return _realm.all<T>().toList();
  }

  @override
  Future<Either<Failures, T>> update<T extends RealmObject>(T item) async {
    try {
      final result = await _realm.writeAsync(
        () => _realm.add(
          item,
          update: true,
        ),
      );
      return right(result);
    } catch (e) {
      return left(DatabaseFailure(errorMessage: e.toString()));
    }
  }
}
