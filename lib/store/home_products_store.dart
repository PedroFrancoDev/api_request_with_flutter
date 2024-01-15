import 'package:flutter/material.dart';
import 'package:request_https/%20acess_data/htttp/exception.dart';
import 'package:request_https/%20acess_data/repository/product_repository.dart';
import 'package:request_https/model/product_model.dart';

class ProductStore {
  final ValueNotifier loading = ValueNotifier<bool>(false);
  final ValueNotifier productList = ValueNotifier<List<ProductModel>>([]);
  final ValueNotifier error = ValueNotifier<String>("");

  final ProductRepositoryImplementation productRepositoryImplementation;

  ProductStore({required this.productRepositoryImplementation});

  Future getProducts() async {
    loading.value = true;
    productList.value = await productRepositoryImplementation.getProducts();
    try {} on NotFoundException catch (e) {
      error.value = e.message;
    } catch (e) {
      error.value = e;
    }
  }
}
