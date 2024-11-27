import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/core/usecases/usecase.dart';
import 'package:flutter_pos/modules/ronpos/features/products/data/models/product_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/products/domain/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductByIdUseCase implements UseCase<ProductModel, int> {
  const GetProductByIdUseCase(this._repository);
  final ProductsRepository _repository;
  @override
  Future<Either<Failures, ProductModel>> call(int id) async {
    return await _repository.getProductById(id);
  }
}
