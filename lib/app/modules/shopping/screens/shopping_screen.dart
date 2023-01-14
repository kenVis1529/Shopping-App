import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/cast/cart_controller.dart';
import 'package:shopping_app/app/modules/shopping/shopping_controler.dart';
import 'package:shopping_app/app/modules/shopping/widgets/card_product.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final shoppingController = Get.put(ShoppingController());
  final castController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping App"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: shoppingController.products.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardProduct(
                    product: shoppingController.products[index],
                  );
                },
              ),
            ),
          ),
          Obx(() => Text("Total cost: \$ ${castController.totalCost}")),
          const SizedBox(
            height: 100.0,
          ),
        ],
      ),
    );
  }
}
