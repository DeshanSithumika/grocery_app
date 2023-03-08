import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/models/vegetable.dart';
import 'package:grocery_app/screens/cart/cart.dart';
import 'package:grocery_app/screens/home/widgets/counter_section.dart';
import 'package:grocery_app/screens/home/widgets/related_products.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
    required this.vegetabel,
  });

  final Vegetabel vegetabel;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              height: 280,
              decoration: const BoxDecoration(
                color: Color(0xffEEE0F8),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/products/${widget.vegetabel.image}",
                  width: 188,
                  height: 188,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
              top: 256,
              child: Container(
                width: size.width,
                height: size.height,
                padding: const EdgeInsets.fromLTRB(29, 34, 29, 0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CoustomText(
                          widget.vegetabel.name,
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                          child: const CounterSection(),
                        ),
                      ],
                    ),
                    const SizedBox(height: 21),
                    CoustomText(
                      "Rs.${widget.vegetabel.price}0 /kg",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 28),
                    CoustomText(
                      widget.vegetabel.desc,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.justify,
                      color: Colors.black,
                    ),
                    const SizedBox(height: 26),
                    const CoustomText(
                      "Related Items",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    RelatedProducts(),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    onTap: (() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Cart()),
                      );
                    }),
                    text: "Add to Cart",
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
