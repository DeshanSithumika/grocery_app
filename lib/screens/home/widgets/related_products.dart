import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/models/vegetable.dart';

class RelatedProducts extends StatelessWidget {
  RelatedProducts({
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
    return SizedBox(
      height: 85,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Container(
                width: 83,
                height: 83,
                decoration: BoxDecoration(
                  color: const Color(0xffEBF8EE),
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/products/${vegetables[index].image}"),
                      fit: BoxFit.fill),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withOpacity(0.7),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CoustomText(
                            vegetables[index].name,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          CoustomText(
                            vegetables[index].price.toString(),
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          separatorBuilder: ((context, index) => const SizedBox(width: 21)),
          itemCount: vegetables.length),
    );
  }
}
