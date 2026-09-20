List<Map<String, dynamic>> cartItems = [];

//function to add items in cart
void addToCart({
  required String image,
  required String name,
  required String quantity,
  required int price,
  required String offer,
}) {
  cartItems.add({
    'image': image,
    'name': name,
    'quantity': quantity,
    'price': price,
    'offer': offer,
    'cartQuantity': 1,
  });
}