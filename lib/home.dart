import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart.dart';
import 'cart-data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController searchController = TextEditingController();
  String selectedCategory = 'All';


  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:Padding(
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
        ),

        body:  SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [

              //   searchbar for items
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),

                  child: TextField(
                    controller: searchController,
                    onChanged: (value) {
                      setState(() {});
                    },
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
                        Icons.apps,
                        'All',
                        'All',
                      ),

                      aisle(
                        Icons.eco,
                        'Fruits &\nVeggies',
                        'Fruits',
                      ),

                      aisle(
                        Icons.local_drink,
                        'Dairy &\nEggs',
                        'Dairy',
                      ),

                      aisle(
                        Icons.fastfood,
                        'Snacks &\nMunchies',
                        'Snacks',
                      ),

                      aisle(
                        Icons.local_bar,
                        'Beverages',
                        'Beverages',
                      ),

                      aisle(
                        Icons.bakery_dining,
                        'Bakery',
                        'Bakery',
                      ),

                    ],
                  ),
                ),

              //   1st item section
                const SizedBox(height: 15),

            if (selectedCategory == 'All' || selectedCategory == 'Fruits') ...[
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

                      if (searchMatch('Fresh Apple'))
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
                              builder: (context) => const ProductDetailsPage(
                                image: 'assets/images/apple-image.png',
                                name: 'Fresh Apple',
                                quantity: '2 pcs',
                                price: '₹149',
                                offer: '25% OFF',
                              ),
                            ),
                          );
                        },

                      ),

                      if (searchMatch('Fresh Banana'))
                      productCard(
                        'assets/images/banana.jpg',
                        'Fresh Banana',
                        '2 pcs',
                        '₹149',
                        '10% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
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

                      if (searchMatch('Fresh Spinach'))
                      productCard(
                        'assets/images/spinach.jpg',
                        'Fresh Spinach',
                        '250g',
                        '₹45',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
                                image: 'assets/images/spinach.jpg',
                                name: 'Fresh Spinach',
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
              ],

              //    item cards to display item of dairy and eggs

                const SizedBox(height: 20),

                if (selectedCategory == 'All' || selectedCategory == 'Dairy') ...[

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

                      if (searchMatch('Farm Fresh Whole Milk'))
                      productCard(
                        'assets/images/milk-image.png',
                        'Farm Fresh Whole Milk',
                        '1 Litre',
                        '₹68',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
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

                      if (searchMatch('Free-Range Brown Eggs'))
                      productCard(
                        'assets/images/eggs.jpg',
                        'Free-Range Brown Eggs',
                        '6 pcs',
                        '₹72',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
                                image: 'assets/images/egg.jpg',
                                name: 'Free-Range Brown Eggs',
                                quantity: '6 pcs',
                                price: '₹72',
                                offer: 'FRESH',
                              ),
                            ),
                          );
                        },
                      ),

                      if (searchMatch('Whole Wheat Bread'))
                      productCard(
                        'assets/images/bread.jpg',
                        'Whole Wheat Bread',
                        '400g',
                        '₹45',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
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
                ],

                //    item cards to display item of snacks and munchies

                const SizedBox(height: 20),

                if (selectedCategory == 'All' || selectedCategory == 'Snacks') ...[

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

                      if (searchMatch('Roasted California Almonds'))
                      productCard(
                        'assets/images/almonds.jpg',
                        'Roasted California Almonds',
                        '200g',
                        '₹180',
                        '15% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
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

                      if (searchMatch('Artisanal Sea Salt'))
                      productCard(
                        'assets/images/salt.jpg',
                        'Artisanal Sea Salt',
                        '110g',
                        '₹60',
                        'FRESH',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
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

                      if (searchMatch('70% Dark Chocolate'))
                      productCard(
                        'assets/images/dark.png',
                        '70% Dark Chocolate',
                        '100g',
                        '₹99',
                        '20% OFF',
                            () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetailsPage(
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
              ],


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

            if (index == 2) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Deals section coming soon'),
                ),
              );
            }

            if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
            }

          },

          items: [
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
              icon: SizedBox(
                width: 30,
                height: 30,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(
                      Icons.shopping_cart,
                      size: 24,
                    ),

                    if (cartItems.isNotEmpty)
                      Positioned(
                        right: -5,
                        top: -5,
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Text(
                            '${cartItems.length}',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              label: 'Cart',
            ),
          ],
        ),
    );

  }
  // filter by search
  bool searchMatch(String name) {
    String searchText = searchController.text.toLowerCase();

    if (searchText.isEmpty) {
      return true;
    }

    return name.toLowerCase().contains(searchText);
  }

  // item card function
  Widget aisle(
      IconData icon,
      String name,
      String category,
      ) {
    return GestureDetector(

      onTap: () {
        setState(() {
          selectedCategory = category;
        });

        if (category == 'Beverages' || category == 'Bakery') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('$category products coming soon'),
            ),
          );
        }
      },

      child: Container(
        width: 75,
        margin: const EdgeInsets.only(right: 10),
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
                      addToCart(
                        image: image,
                        name: name,
                        quantity: quantity,
                        price: int.parse(
                          price.replaceAll('₹', ''),
                        ),
                        offer: offer,
                      );
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