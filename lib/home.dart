import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Center(
          child:  Text("Consumindo API de Produtos", style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),),
        ),
        backgroundColor: Colors.green.shade600,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: const Column(
          children: [
            Text("ddf")
          ],
        ),
      ),
    );
  }
}
