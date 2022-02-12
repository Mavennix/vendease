class ProductCategory {
  String image;
  String name;

  ProductCategory({
    required this.name,
    required this.image,
  });
}

List<ProductCategory> productCategories = [
  ProductCategory(name: 'Drinks', image: 'assets/images/drinks.png'),
  ProductCategory(name: 'Processed Can', image: 'assets/images/cans.png'),
  ProductCategory(name: 'Seafoods', image: 'assets/images/seafood.png'),
];
