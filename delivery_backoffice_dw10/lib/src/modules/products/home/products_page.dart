import 'package:flutter/material.dart';

import 'widgets/product_header.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50]!,
      padding: const EdgeInsets.only(left: 40, top: 40),
      child: Column(
        children: [
          const ProductHearder(),
          const SizedBox(height: 50),
          Expanded(
              child: GridView.builder(
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 280,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: 280,
              crossAxisSpacing: 20,
            ),
            itemBuilder: (context, index) {
              return const Text('data');
            },
          ))
        ],
      ),
    );
  }
}