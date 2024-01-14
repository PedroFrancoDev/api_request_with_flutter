import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Consumindo API de Produtos",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        backgroundColor: Colors.yellow.shade600,
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red,
          ),
          child: Image.asset(
            "assets/images/CDA_Girls.jpg",
            width: MediaQuery.of(context).size.width,
            height: 150,
            fit: BoxFit.cover,
          ),
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
      ]
    );
  }
}
