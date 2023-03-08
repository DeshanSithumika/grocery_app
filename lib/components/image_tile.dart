import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  ImageTile({
    Key? key,
    required this.height,
    required this.imgUrl,
    required this.width,
  }) : super(key: key);

  double width;
  double height;
  String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.only(right: 20),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(imgUrl),
        ),
      ]),
    );
  }
}
