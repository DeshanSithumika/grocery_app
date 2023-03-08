import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/models/vegetable.dart';
import 'package:grocery_app/screens/home/product_details/product_details.dart';
import 'package:grocery_app/utils/app_colors.dart';
import 'package:grocery_app/utils/util_functions.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    Key? key,
    required this.vegetables,
  }) : super(key: key);

  final Vegetabel vegetables;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        UtilFunctions.navigateTo(
            context, ProductDetails(vegetabel: vegetables));
      },
      child: Container(
        height: 177,
        decoration: BoxDecoration(
            color: const Color(0xffEBF8EE),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image:
                    AssetImage('assets/images/products/${vegetables.image}'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.favorite_border)),
            Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                  color: AppColors.primaryColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CoustomText(
                    vegetables.name,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  Expanded(
                    child: CoustomText(
                      "Rs.${vegetables.price.toString()}.00",
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
