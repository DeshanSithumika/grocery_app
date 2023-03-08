import 'package:flutter/material.dart';
import 'package:grocery_app/models/vegetable.dart';

import 'product_tile.dart';

class ProductGrid extends StatelessWidget {
  ProductGrid({
    Key? key,
  }) : super(key: key);

  final List<Vegetabel> vegetables = [
    Vegetabel(id: 1, name: "Tomato", price: 1.50, image: "T1.png"),
    Vegetabel(id: 2, name: "Pumpkin", price: 1.50, image: "p1.png"),
    Vegetabel(id: 3, name: "Brinjol", price: 1.20, image: "B1.png"),
    Vegetabel(id: 4, name: "Cauliflower", price: 1.5, image: "C1.png"),
    Vegetabel(id: 5, name: "Potato", price: 1.50, image: "5.png"),
    Vegetabel(id: 6, name: "Brocoli", price: 1.50, image: "6.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 44),
        itemCount: vegetables.length,
        itemBuilder: (context, index) => ProductTile(
          vegetables: vegetables[index],
        ),
      ),
    );
  }
}
