import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart.dart';
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
          title: const Text(''),
        ),
        body:  SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

              //   Top heading

                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 5),

                  child: Row(
                    children: [

                      const Icon(
                        Icons.eco,
                        color: Color(0xFF007A5E),
                        size: 24,
                      ),

                      const SizedBox(width: 5),

                      const Text(
                        'FreshRush',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007A5E),
                        ),
                      ),

                      const Spacer(),

                      Container(
                        height: 35,
                        width: 35,

                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.person,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),

              //   searchbar for items
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),

                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search 'fruits', 'milk', 'snacks'...",

                      hintStyle: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),

                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),

                      suffixIcon: const Icon(
                        Icons.mic,
                        size: 20,
                      ),

                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

              //   item category
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 5, 16, 10),

                  child: Row(
                    children: [

                      const Text(
                        'Explore Aisles',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Spacer(),

                      const Text(
                        '60+ Aisles',
                        style: TextStyle(
                          fontSize: 11,
                          color: Color(0xFF007A5E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

              //   items cards
                SizedBox(
                  height: 95,

                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),

                    children: [

                      aisle(
                        Icons.eco,
                        'Fruits &\nVeggies',
                      ),

                      aisle(
                        Icons.local_drink,
                        'Dairy &\nEggs',
                      ),

                      aisle(
                        Icons.fastfood,
                        'Snacks &\nMunchies',
                      ),

                      aisle(
                        Icons.local_bar,
                        'Beverages',
                      ),

                      aisle(
                        Icons.bakery_dining,
                        'Bakery',
                      ),

                    ],
                  ),
                ),

              //   1st item section
                const SizedBox(height: 15),

                sectionTitle(
                  'Fresh Produce',
                ),

              //   item cards to display item of fresh produce

                const SizedBox(height: 10),

                SizedBox(
                  height: 225,

                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),

                    children: [

                      productCard(
                        'assets/images/apple-image.png',
                        'Fresh Apple',
                        '2 pcs',
                        '₹149',
                        '25% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },

                      ),

                      productCard(
                        'assets/images/apple-image.png',
                        'Fresh Banana',
                        '2 pcs',
                        '₹149',
                        '10% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),

                      productCard(
                        'assets/images/apple-image.png',
                        'Fresh Spinach',
                        '250g',
                        '₹45',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),

                    ],
                  ),
                ),

              //    item cards to display item of dairy and eggs

                const SizedBox(height: 20),

                sectionTitle('Dairy & Breakfast'),

                const SizedBox(height: 10),

                SizedBox(
                  height: 225,

                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),

                    children: [

                      productCard(
                        'assets/images/milk.png',
                        'Farm Fresh Whole Milk',
                        '1 Litre',
                        '₹68',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),

                      productCard(
                        'assets/images/milk.png',
                        'Free-Range Brown Eggs',
                        '6 pcs',
                        '₹75',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),

                      productCard(
                        'assets/images/bread.png',
                        'Whole Wheat Bread',
                        '400g',
                        '₹45',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),

                //    item cards to display item of snacks and munchies

                const SizedBox(height: 20),

                sectionTitle('Snacks & Munchies'),

                const SizedBox(height: 10),

                SizedBox(
                  height: 225,

                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),

                    children: [

                      productCard(
                        'assets/images/chips.png',
                        'Roasted California Almonds',
                        '200g',
                        '₹180',
                        '15% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),

                      productCard(
                        'assets/images/chips.png',
                        'Artisanal Sea Salt',
                        '110g',
                        '₹60',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),

                      productCard(
                        'assets/images/chips.png',
                        '70% Dark Chocolate',
                        '100g',
                        '₹99',
                        '20% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      
      //   navigation bar

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,

          selectedItemColor: const Color(0xFF007A5E),
          unselectedItemColor: Colors.grey,

          type: BottomNavigationBarType.fixed,

          onTap: (index) {

            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            }

          },

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Deals',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
  // item card function
  Widget aisle(IconData icon, String name) {
    return Container(
      width: 75,

      margin: const EdgeInsets.only(
        right: 10,
      ),

      child: Column(
        children: [

          Container(
            height: 60,
            width: 60,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),

            child: Icon(
              icon,
              color: const Color(0xFF007A5E),
              size: 30,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            name,
            textAlign: TextAlign.center,

            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

//   item section function

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),

      child: Row(
        children: [

          const Icon(
            Icons.star_border_outlined,
            size: 18,
            color: Color(0xFF007A5E),
          ),

          const SizedBox(width: 5),

          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),

          const Spacer(),

          const Text(
            'See All ›',
            style: TextStyle(
              fontSize: 11,
              color: Color(0xFF007A5E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
//   item details display function
  Widget productCard(
      String image,
      String name,
      String quantity,
      String price,
      String offer,
      VoidCallback onTap,
      ) {
    return GestureDetector(
        onTap: onTap,
      child: Container(
        width: 145,
      
        margin: const EdgeInsets.only(
          right: 10,
        ),
      
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      
          children: [
      
            // Product image
            Container(
              height: 110,
              width: double.infinity,
      
              decoration: BoxDecoration(
                color: const Color(0xFFF1F1F1),
                borderRadius: BorderRadius.circular(10),
              ),
      
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
      
            const SizedBox(height: 5),
      
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
      
              child: Text(
                quantity,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
      
              child: Text(
                name,
                maxLines: 2,
      
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      
            const Spacer(),
      
            Padding(
              padding: const EdgeInsets.fromLTRB(
                8,
                0,
                8,
                8,
              ),
      
              child: Row(
                children: [
      
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF007A5E),
                    ),
                  ),
      
                  const Spacer(),
                  // clickable add button to add item to cart
                  GestureDetector(
                    onTap: () {
                      print('$name added to cart');
                    },

                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 5,
                      ),

                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF007A5E),
                        ),

                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: const Text(
                        '+ ADD',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF007A5E),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}