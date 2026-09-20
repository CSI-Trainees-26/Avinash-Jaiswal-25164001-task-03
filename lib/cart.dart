import 'package:flutter/material.dart';
import 'cart-data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  int get subtotal {
    int total = 0;

    for (var product in cartItems) {
      total += (product['price'] as int) *
          (product['cartQuantity'] as int);
    }

    return total;
  }

  int get deliveryCharge {
    if (subtotal == 0) {
      return 0;
    }

    return 30;
  }

  int get totalAmount {
    return subtotal + deliveryCharge;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              // Cart items
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: cartItems.length,

                itemBuilder: (context, index) {
                  final product = cartItems[index];

                  return Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(12),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        // Product image
                        Container(
                          height: 80,
                          width: 80,
                          color: const Color(0xFFE8F5EF),

                          child: Image.asset(
                            product['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(width: 10),

                        // Product details
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,

                            children: [

                              Text(
                                product['name']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),

                              const SizedBox(height: 5),

                              Text(
                                'Qty: ${product['cartQuantity']}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                '₹${product['price']}',
                                style: const TextStyle(
                                  color: Color(0xFF007A5E),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: 5),

                        // Right side buttons
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.end,

                          children: [

                            // Quantity buttons
                            Container(
                              height: 35,

                              decoration: BoxDecoration(
                                color: const Color(0xFF007A5E),
                                borderRadius:
                                BorderRadius.circular(6),
                              ),

                              child: Row(
                                mainAxisSize: MainAxisSize.min,

                                children: [

                                  // Minus button
                                  IconButton(
                                    padding: EdgeInsets.zero,

                                    constraints:
                                    const BoxConstraints(
                                      minWidth: 30,
                                      minHeight: 35,
                                    ),

                                    onPressed: () {
                                      setState(() {
                                        if (product[
                                        'cartQuantity'] >
                                            1) {
                                          product[
                                          'cartQuantity']--;
                                        }
                                      });
                                    },

                                    icon: const Icon(
                                      Icons.remove,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),

                                  // Quantity
                                  Text(
                                    '${product['cartQuantity']}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                  // Plus button
                                  IconButton(
                                    padding: EdgeInsets.zero,

                                    constraints:
                                    const BoxConstraints(
                                      minWidth: 30,
                                      minHeight: 35,
                                    ),

                                    onPressed: () {
                                      setState(() {
                                        product[
                                        'cartQuantity']++;
                                      });
                                    },

                                    icon: const Icon(
                                      Icons.add,
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 8),

                            // Remove button
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  cartItems.removeAt(index);
                                });
                              },

                              child: Container(
                                height: 35,
                                width: 105,

                                decoration: BoxDecoration(
                                  color: Color(0xFFFF6B6B),
                                  borderRadius: BorderRadius.circular(6),
                                ),

                                alignment: Alignment.center,

                                child: const Text(
                                  'Remove',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,

                child: Text(
                  'Order Summary',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [
                  const Text('Subtotal'),

                  Text(
                    '₹$subtotal',

                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [
                  const Text('Delivery Charge'),

                  Text(
                    '₹$deliveryCharge',

                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    'Total',

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    '₹$totalAmount',

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF007A5E),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(
                  onPressed: () {
                    print('Proceed to Pay');
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF007A5E),
                    foregroundColor: Colors.white,
                  ),

                  child: const Text(
                    'Proceed to Pay',

                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}