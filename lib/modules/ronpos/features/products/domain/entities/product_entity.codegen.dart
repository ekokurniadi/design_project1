import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.codegen.freezed.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    int? id,
    required String name,
  }) = _ProductEntity;
}
