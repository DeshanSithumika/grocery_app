import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/image_tile.dart';
import 'package:grocery_app/models/cart_item_model.dart';
import 'package:grocery_app/screens/home/widgets/counter_section.dart';

class CartItem extends StatelessWidget {
  CartItem({
    Key? key,
    required this.cartItemModel,
  }) : super(key: key);

  CartItemModel cartItemModel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 90,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageTile(
            height: 70,
            width: 70,
            imgUrl: "assets/images/products/G.png",
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoustomText(
                cartItemModel.name,
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  const Icon(Icons.remove),
                  const SizedBox(width: 15),
                  CoustomText(
                    cartItemModel.quantity.toString(),
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 15),
                  const Icon(Icons.add),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(Icons.close, color: Colors.red),
              CoustomText(
                cartItemModel.price.toString(),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ],
          )
        ],
      ),
    );
  }
}
