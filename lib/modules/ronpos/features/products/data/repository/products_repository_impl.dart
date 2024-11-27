import 'package:dartz/dartz.dart';
import 'package:flutter_pos/core/errors/failures.dart';
import 'package:flutter_pos/modules/ronpos/features/products/data/datasources/local/products_local_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/products/data/datasources/remote/products_remote_datasource.dart';
import 'package:flutter_pos/modules/ronpos/features/products/data/models/product_model.codegen.dart';
import 'package:flutter_pos/modules/ronpos/features/products/domain/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  const ProductsRepositoryImpl(
    this._productsLocalDataSource,
    this._productsRemoteDataSource,
  );

  final ProductsLocalDataSource _productsLocalDataSource;
  final ProductsRemoteDataSource _productsRemoteDataSource;

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
