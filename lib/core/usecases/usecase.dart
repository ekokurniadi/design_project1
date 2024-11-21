import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';

abstract class UseCase<ReturnType, Params> {
  Future<Either<Failures, ReturnType>> call(Params params);
}
