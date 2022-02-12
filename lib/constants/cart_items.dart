class CartItem {
  String price;
  int crate;
  String name;
  int currentCount;
  String image;

  CartItem({
    required this.price,
    required this.name,
    required this.image,
    required this.currentCount,
    required this.crate,
  });
}

List<CartItem> cartItems = [
  CartItem(
      name: 'Watermelon',
      image: 'assets/images/watermelon.png',
      price: '1,100',
      currentCount: 6,
      crate: 1),
  CartItem(
      name: 'Pineapple',
      image: 'assets/images/pineapple.png',
      price: '1,100',
      currentCount: 12,
      crate: 1),
  CartItem(
      name: 'Catfish',
      image: 'assets/images/catfish.png',
      price: '1,100',
      currentCount: 3,
      crate: 1),
];
