import 'package:flutter/material.dart';
import 'package:flutter_programs/home.dart';

import 'cart_widgets.dart';
import 'login_widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart',style:TextStyle(fontWeight: FontWeight(800))),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: const Color(0xFFB8E6D2),
              child: const Icon(Icons.person),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            // Product
            const CartItem(
              image: 'assets/images/apple-image.png',
              name: 'Fresh Apples',
              price: '₹120',
              quantity: '2',
            ),

            const SizedBox(height: 10),

            const CartItem(
              image: 'assets/images/bread.jpg',
              name: 'Whole Wheat Bread',
              price: '₹45',
              quantity: '3',
            ),

            const SizedBox(height: 10),

            const CartItem(
              image: 'assets/images/almonds.jpg',
              name: 'Roasted California Almonds',
              price: '₹180',
              quantity: '1',
            ),

            const SizedBox(height: 10),

            // Order Summary
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
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

                  const PriceRow(
                    title: 'ItemTotal',
                    price: '₹240',
                  ),

                  const SizedBox(height: 10),

                  const PriceRow(
                    title: 'Delivery Fee',
                    price: '₹30',
                  ),

                  const SizedBox(height: 15),

                  const PriceRow(
                    title: 'To Pay',
                    price: '₹270',
                    bold: true,
                  ),

                  const SizedBox(height: 25),

                  CartButton(
                    text: 'Proceed to Pay',
                    onPressed: () {
                      print("Payment successful...");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      // Bottom nav bar of cart
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 3,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const HomePage(),
              ),
            );
          }
        },
      ),
    );
  }
}
