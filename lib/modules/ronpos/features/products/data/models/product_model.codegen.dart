import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.codegen.freezed.dart';
part 'product_model.codegen.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    required String name,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
