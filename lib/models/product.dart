class Product {
  final String name;
  final String image;
  final double price;
  final double? oldPrice;
  final String unit;
  int quantity;

  Product({
    required this.name,
    required this.image,
    required this.price,
    this.oldPrice,
    required this.unit,
    this.quantity = 0,
  });

  bool get hasDiscount => oldPrice != null;
}
