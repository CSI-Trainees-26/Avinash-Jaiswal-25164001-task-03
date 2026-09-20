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
        body:SingleChildScrollView(
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

                          const SizedBox(width: 15),

                          // Product details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                product['name']!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                'Qty: ${product['cartQuantity']!}',
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              const SizedBox(height: 5),

                              Text(
                                '₹${product['price']!}',
                                style: const TextStyle(
                                  color: Color(0xFF007A5E),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                        //   button to increase and decrease the quantity
                          //   decrease button
                          IconButton(
                            onPressed: () {
                              setState(() {

                                if (product['cartQuantity'] > 1) {
                                  product['cartQuantity']--;
                                }

                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),

                          // increase button

                          IconButton(
                            onPressed: () {
                              setState(() {
                                product['cartQuantity']++;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),


                        ],
                      ),
                    );
                  },
                ),

                // Order summary widget
          
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

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
          
              //   fee widget
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

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

              //   total amount widget
          
                const SizedBox(height: 15),
          
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
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
          
              //   Pay button
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
        )

    );

  }
}