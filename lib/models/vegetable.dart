class Vegetabel {
  Vegetabel(
      {required this.id,
      required this.name,
      required this.price,
      required this.image,
      this.desc =
          "Grapes  is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution."});

  final int id;
  final String name;
  final double price;
  final String image;
  final String desc;
}
