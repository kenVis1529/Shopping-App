import 'package:flutter/material.dart';
import 'package:shopping_app/app/data/models/product.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    required this.product,
    super.key,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(product.productName),
              subtitle: Text(product.productDescription),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Price: ${product.price}"),
                ElevatedButton(onPressed: () {}, child: const Text("Add"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
