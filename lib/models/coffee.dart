class Coffee {
  final String name;
  final String description;
  final double price;
  final String image;
  int quantity;

  Coffee({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    this.quantity = 0,
  });
}
