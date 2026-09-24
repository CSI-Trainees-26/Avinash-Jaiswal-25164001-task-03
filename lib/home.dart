import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart.dart';
import 'cart_widgets.dart';
import 'home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        title: const Row(
          children: [
            Icon(
              Icons.eco,
              color: Color(0xFF007A5E),
              size: 22,
            ),

            SizedBox(width: 5),

            Text(
              'FreshRush',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color(0xFF007A5E),
              ),
            ),

            Spacer(),

            CircleAvatar(
              radius: 16,
              backgroundColor: Color(0xFFB8E6D2),
              child: Icon(
                Icons.person,
                size: 18,
                color: Color(0xFF007A5E),
              ),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Search bar
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Container(
                  height: 42,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 18,
                        color: Colors.grey,
                      ),

                      SizedBox(width: 8),

                      Expanded(
                        child: Text(
                          "Search 'avocado', 'milk', 'chips'...",
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      Icon(
                        Icons.mic,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),

              // Explore Aisles
              const Padding(
                padding: EdgeInsets.fromLTRB(16, 5, 16, 8),
                child: Row(
                  children: [
                    Text(
                      'Explore Aisles',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Spacer(),

                    Text(
                      '60+ Aisles',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF007A5E),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              // Aisles
              SizedBox(
                height: 85,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    AisleCard(
                      icon: Icons.apps,
                      name: 'All',
                    ),
                    AisleCard(
                      icon: Icons.eco,
                      name: 'Fruits &\nVeggies',
                    ),
                    AisleCard(
                      icon: Icons.local_drink,
                      name: 'Dairy &\nEggs',
                    ),
                    AisleCard(
                      icon: Icons.fastfood,
                      name: 'Snacks &\nMunchies',
                    ),
                    AisleCard(
                      icon: Icons.local_bar,
                      name: 'Beverages',
                    ),
                    AisleCard(
                      icon: Icons.bakery_dining,
                      name: 'Bakery',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // Fresh Produce
              const SectionTitle(
                title: 'Fresh Produce',
              ),

              const SizedBox(height: 8),

              SizedBox(
                height: 205,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ProductCard(
                      image: 'assets/images/apple-image.png',
                      name: 'Fresh Apples',
                      quantity: '1 kg',
                      price: '₹199',
                      offer: '25% OFF',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/apple-image.png',
                              name: 'Fresh Apples',
                              quantity: '1 kg',
                              price: '₹199',
                              offer: '25% OFF',
                            ),
                          ),
                        );
                      },
                    ),

                    ProductCard(
                      image: 'assets/images/banana.jpg',
                      name: 'Fresh Banana',
                      quantity: '2 pcs',
                      price: '₹149',
                      offer: '10% OFF',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/banana.jpg',
                              name: 'Fresh Banana',
                              quantity: '2 pcs',
                              price: '₹149',
                              offer: '10% OFF',
                            ),
                          ),
                        );
                      },
                    ),

                    ProductCard(
                      image: 'assets/images/spinach.jpg',
                      name: 'Crisp Farm Spinach',
                      quantity: '250g',
                      price: '₹45',
                      offer: 'FRESH',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/spinach.jpg',
                              name: 'Crisp Farm Spinach',
                              quantity: '250g',
                              price: '₹45',
                              offer: 'FRESH',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // Dairy
              const SectionTitle(
                title: 'Dairy & Breakfast',
              ),

              const SizedBox(height: 8),

              SizedBox(
                height: 205,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ProductCard(
                      image: 'assets/images/milk-image.png',
                      name: 'Farm Fresh Whole Milk',
                      quantity: '1 Litre',
                      price: '₹68',
                      offer: 'FRESH',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/milk-image.png',
                              name: 'Farm Fresh Whole Milk',
                              quantity: '1 Litre',
                              price: '₹68',
                              offer: 'FRESH',
                            ),
                          ),
                        );
                      },
                    ),

                    ProductCard(
                      image: 'assets/images/eggs.jpg',
                      name: 'Free-Range Brown Eggs',
                      quantity: '6 pcs',
                      price: '₹72',
                      offer: 'FRESH',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/eggs.jpg',
                              name: 'Free-Range Brown Eggs',
                              quantity: '6 pcs',
                              price: '₹72',
                              offer: 'FRESH',
                            ),
                          ),
                        );
                      },
                    ),

                    ProductCard(
                      image: 'assets/images/bread.jpg',
                      name: 'Whole Wheat Bread',
                      quantity: '400g',
                      price: '₹45',
                      offer: 'FRESH',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/bread.jpg',
                              name: 'Whole Wheat Bread',
                              quantity: '400g',
                              price: '₹45',
                              offer: 'FRESH',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              // Snacks
              const SectionTitle(
                title: 'Snacks & Munchies',
              ),

              const SizedBox(height: 8),

              SizedBox(
                height: 205,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    ProductCard(
                      image: 'assets/images/almonds.jpg',
                      name: 'Roasted California Almonds',
                      quantity: '200g',
                      price: '₹180',
                      offer: '15% OFF',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/almonds.jpg',
                              name: 'Roasted California Almonds',
                              quantity: '200g',
                              price: '₹180',
                              offer: '15% OFF',
                            ),
                          ),
                        );
                      },
                    ),

                    ProductCard(
                      image: 'assets/images/salt.jpg',
                      name: 'Artisanal Sea Salt',
                      quantity: '110g',
                      price: '₹60',
                      offer: 'FRESH',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/salt.jpg',
                              name: 'Artisanal Sea Salt',
                              quantity: '110g',
                              price: '₹60',
                              offer: 'FRESH',
                            ),
                          ),
                        );
                      },
                    ),

                    ProductCard(
                      image: 'assets/images/dark.png',
                      name: '70% Dark Chocolate',
                      quantity: '100g',
                      price: '₹99',
                      offer: '20% OFF',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const ProductDetailsPage(
                              image: 'assets/images/dark.png',
                              name: '70% Dark Chocolate',
                              quantity: '100g',
                              price: '₹99',
                              offer: '20% OFF',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),

      // Bottom navigation
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CartPage(),
              ),
            );
          }
        },
      ),
    );
  }
}