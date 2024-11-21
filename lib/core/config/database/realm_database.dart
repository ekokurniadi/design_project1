import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:realm/realm.dart';

abstract class RealmDatabase {
  List<T> getAll<T extends RealmObject>();

  FutureOr<Either<Failures,T>> add<T extends RealmObject>(T item);

  Future<void> addList<T extends RealmObject>(Iterable<T> items);

  FutureOr<Either<Failures,T>> update<T extends RealmObject>(T item);

  Future<void> delete<T extends RealmObject>(T item);

  T? find<T extends RealmObject,P>(P primaryKey);

  void dispose();
}