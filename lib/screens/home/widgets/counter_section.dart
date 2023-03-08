import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.add,
          size: 18,
        ),
        SizedBox(width: 10),
        CoustomText(
          "1",
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(width: 10),
        Icon(
          Icons.add,
          size: 18,
        ),
      ],
    );
  }
}
