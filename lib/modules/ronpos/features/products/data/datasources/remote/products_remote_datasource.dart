import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/products/data/models/product_model.codegen.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsRemoteDataSource {
  Future<Either<Failures, ProductModel>> getProductById(int id);
  Future<Either<Failures, List<ProductModel>>> getAllProducts(int page);
}

@LazySingleton(as: ProductsRemoteDataSource)
class ProductsRemoteDataSourceImpl implements ProductsRemoteDataSource {
  const ProductsRemoteDataSourceImpl();

  @override
  Future<Either<Failures, ProductModel>> getProductById(int id) async {
    //TODO: implements getProductById
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<ProductModel>>> getAllProducts(int page) async {
    //TODO: implements getAllProducts
    throw UnimplementedError();
  }
}
