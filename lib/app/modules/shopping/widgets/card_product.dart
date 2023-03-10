import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/data/models/product.dart';
import 'package:shopping_app/app/modules/cast/cart_controller.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    required this.product,
    super.key,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    final cartController = Get.find<CartController>();

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
              ElevatedButton(
                  onPressed: () {
                    cartController.addProduct(product);
                  },
                  child: const Text("Add"))
            ],
          )),
        ],
      ),
    );
  }
}
