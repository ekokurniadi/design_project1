import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/products/data/models/product_model.codegen.dart';

abstract class ProductsRepository {
  Future<Either<Failures, ProductModel>> getProductById(int id);
  Future<Either<Failures, List<ProductModel>>> getAllProducts(int page);
}
