class ProductModel {
  int price;
  String title;
  String brand;
  double rating;
  String thumbnail;
  String category;
  String description;
  List<String> images;

  ProductModel({
    required this.title,
    required this.price,
    required this.description,
    required this.thumbnail,
    required this.rating,
    required this.brand,
    required this.category,
    required this.images,
  });

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      price: map["price"],
      title: map["title"],
      brand: map["brand"],
      rating: map["rating"],
      thumbnail: map["thumbnail"],
      category: map["category"],
      description: map["description"],
      images: List<String>.from(map["images"] as List),
    );
  }
}
