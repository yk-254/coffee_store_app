class ProductModel {
  final int id;
  final String name;
  final String category;
  final int price;
  final String image;
  final String description;
  final String size;

  ProductModel({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.image,
    required this.size,
  });
}
