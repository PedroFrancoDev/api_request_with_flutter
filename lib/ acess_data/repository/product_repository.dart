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

    return response;
  }
}