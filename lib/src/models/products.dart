class Product {
  final String name;
  final String image;
  final double rating;
  final double price;
  final String vendor;
  final bool wishList;
  final String description;
  int counter = 0;
  bool isAdded = false;

  Product(
      {this.name,
      this.image,
      this.rating,
      this.price,
      this.description,
      this.vendor,
      this.wishList});
}
