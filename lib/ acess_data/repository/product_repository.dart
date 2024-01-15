import 'dart:convert';
import 'package:request_https/%20acess_data/htttp/exception.dart';
import 'package:request_https/%20acess_data/htttp/http_client.dart';
import 'package:request_https/model/product_model.dart';

abstract class ProductRepository {
  Future<List<ProductModel>> getProducts();
}

class ProductRepositoryImplementation implements ProductRepository {
  final HttpClient client;

  ProductRepositoryImplementation({
    required this.client,
  });

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await client.get(
      url: 'https://dummyjson.com/products',
    );

    if (response.StatusCode == 200) {
      List<ProductModel> products = [];

      final body = jsonDecode(response.body);

      body["products"].map(
        (item) {
          final product = ProductModel.fromMap(item);

          products.add(product);
        },
      ).toList();

      return products;
    } else if (response.StatusCode == 404) {
      throw NotFoundException(message: "A URL informada não é válida!");
    } else {
      throw Exception("Não foi possível carregar os produtos.");
    }
  }
}
