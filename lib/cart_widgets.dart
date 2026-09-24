import 'package:flutter/material.dart';

// Cart Item
class CartItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String quantity;

  const CartItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Row(
        children: [

          // Product image
          Image.asset(
            image,
            height: 80,
            width: 80,
            fit: BoxFit.cover,
          ),

          const SizedBox(width: 10),

          // Product details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  'Qty: $quantity',
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  price,
                  style: const TextStyle(
                    color: Color(0xFF007A5E),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // + / quantity / -
          Container(
            height: 35,

            decoration: BoxDecoration(
              color: const Color(0xFF007A5E),
              borderRadius: BorderRadius.circular(7),
            ),

            child: Row(
              children: [

                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,

                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 16,
                  ),
                ),

                Text(
                  quantity,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,

                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// Price Row
class PriceRow extends StatelessWidget {
  final String title;
  final String price;
  final bool bold;

  const PriceRow({
    super.key,
    required this.title,
    required this.price,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: bold ? 18 : 16,
            fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          ),
        ),

        Text(
          price,
          style: TextStyle(
            fontSize: bold ? 18 : 16,
            fontWeight: FontWeight.bold,
            color: bold
                ? const Color(0xFF007A5E)
                : Colors.black,
          ),
        ),
      ],
    );
  }
}


// Cart Button
class CartButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CartButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: const Icon(Icons.add, size: 16),
        label: Text(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF007A5E),
          foregroundColor: Colors.white,
        ),
      ),
    );
  }
}

// Bottom nav bar

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF007A5E),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_outlined),
          activeIcon: Icon(Icons.grid_view),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sell_outlined),
          activeIcon: Icon(Icons.sell),
          label: 'Deals',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
      ],
    );
  }
}