import 'package:flutter/material.dart';
import 'package:request_https/%20acess_data/htttp/http_client.dart';
import 'package:request_https/%20acess_data/repository/product_repository.dart';
import 'package:request_https/model/product_model.dart';
import 'package:request_https/store/home_products_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final store = ProductStore(
    productRepositoryImplementation: ProductRepositoryImplementation(
      client: HttpClientImplementation(),
    ),
  );

  final List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();

    store.getProducts().then(
      (value) {
        products.add(value);
      },
    );

    print(products);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Lista de Produtos",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        backgroundColor: Colors.black87,
        toolbarHeight: 130,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            _productCard(context: context),
          ],
        ),
      ),
    );
  }

  Widget _productCard({required BuildContext context}) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(
        "assets/images/CDA_Girls.jpg",
        width: MediaQuery.of(context).size.width,
        height: 150,
        fit: BoxFit.cover,
      ),
      const SizedBox(
        height: 10,
      ),
      Title(
        color: Colors.black,
        child: const Text(
          "iPhone 10",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(
        "1.000,00 Kz",
        style: TextStyle(
          color: Colors.green.shade500,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
      const Text(
        "Estudar flutter com objectivo de evoluir na carreira.",
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    ]);
  }
}
