import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          const Expanded(
            child: ListTile(
              title: Text("Heading"),
              subtitle: Text("Description"),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Price: "),
                ElevatedButton(onPressed: () {}, child: const Text("Add"))
              ],
            ),
          )
        ],
      ),
    );
  }
}
