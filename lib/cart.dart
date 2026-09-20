import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: Colors.white,
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // cart item 1
                Container(
                  padding: const EdgeInsets.all(12),
          
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
          
                  child: Row(
                    children: [
          
                      // item image
                      Container(
                        height: 80,
                        width: 80,
                        // Have to add image here....
                        color: const Color(0xFFE8F5EF),
          
                        child: const Icon(
                          Icons.apple,
                          size: 45,
                          color: Color(0xFF007A5E),
                        ),
                      ),
          
                      const SizedBox(width: 15),
          
                      // item details
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
          
                        children: [
                          Text(
                            'Fresh Apple',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
          
                          SizedBox(height: 5),
          
                          Text(
                            '₹120 / kg',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
          
                      // pushed right
                      const Spacer(),
          
                      // Minus
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),
          
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
          
                      // Plus
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
          
              //   cart item 2
          
                Container(
                  padding: const EdgeInsets.all(12),
          
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
          
                  child: Row(
                    children: [
          
                      // item image
                      Container(
                        height: 80,
                        width: 80,

                        // Have to add image here....
          
                        color: const Color(0xFFE8F5EF),
          
                        child: const Icon(
                          Icons.eco,
                          size: 45,
                          color: Color(0xFF007A5E),
                        ),
                      ),
          
                      const SizedBox(width: 15),
          
                      // item 2 details
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
          
                        children: [
                          Text(
                            'Fresh Banana',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
          
                          SizedBox(height: 5),
          
                          Text(
                            '₹60 / kg',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
          
                      // pushed right
                      const Spacer(),
          
                      // Minus
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),
          
                      const Text(
                        '2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
          
                      // Plus
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
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
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                  children: [
                    Text('Subtotal'),
          
                    Text(
                      '₹240',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
          
              //   fee widget
                const SizedBox(height: 10),
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
                  children: [
                    Text('Delivery Charge'),
          
                    Text(
                      '₹30',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
          
              //   total amount widget
          
                const SizedBox(height: 15),
          
                const Row(
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
                      '₹270',
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

      ),
    );
  }
}