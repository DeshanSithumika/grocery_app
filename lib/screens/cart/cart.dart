import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/models/cart_item_model.dart';
import 'package:grocery_app/screens/cart/success.dart';
import 'package:grocery_app/screens/cart/widgets/cart_item.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartItemModel> cartItems = [
    CartItemModel(
        id: 1, name: 'Graps', price: 152.0, quantity: 1, totalValue: 152.0),
    CartItemModel(
        id: 2, name: 'Tomato', price: 152.0, quantity: 1, totalValue: 152.0),
    CartItemModel(
        id: 3, name: 'Bringol', price: 152.0, quantity: 1, totalValue: 152.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CoustomText("Cart"),
                ],
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) => CartItem(
                    cartItemModel: cartItems[index],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 250,
        child: Padding(
          padding: const EdgeInsets.only(top: 30, right: 50, left: 50),
          child: Column(
            children: [
              CartAmountRow(text: "Item total", price: "Rs.50.34"),
              const SizedBox(height: 10),
              CartAmountRow(text: "Discount", price: "Rs.-10.34"),
              const SizedBox(height: 10),
              CartAmountRow(text: "Tax", price: "Rs.0.00"),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CoustomText(
                    "Total",
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CoustomText(
                    "Rs.12.49",
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  )
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Success()),
                    );
                  }),
                  text: "Place Order"),
            ],
          ),
        ),
      ),
    );
  }
}

class CartAmountRow extends StatelessWidget {
  CartAmountRow({
    Key? key,
    required this.price,
    required this.text,
  }) : super(key: key);

  final String text;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CoustomText(
          text,
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
        CoustomText(
          price,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ],
    );
  }
}
