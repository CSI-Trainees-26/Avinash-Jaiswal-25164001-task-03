import 'package:flutter/material.dart';


// ---------------- AISLE CARD ----------------

class AisleCard extends StatelessWidget {
  final IconData icon;
  final String name;

  const AisleCard({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      margin: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            child: Icon(
              icon,
              color: const Color(0xFF007A5E),
              size: 25,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


// ---------------- SECTION TITLE ----------------

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(
            Icons.star_border,
            size: 17,
            color: Color(0xFF007A5E),
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Text(
            'See All ›',
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF007A5E),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------- PRODUCT CARD ----------------

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final String offer;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    required this.offer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 145,
        margin: const EdgeInsets.only(right: 10),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              image,
              height: 110,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    quantity,
                    style: const TextStyle(
                      fontSize: 9,
                      color: Colors.grey,
                    ),
                  ),

                  Text(
                    name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007A5E),
                        ),
                      ),

                      const Spacer(),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 7,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF007A5E),
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: const Text(
                          '+ ADD',
                          style: TextStyle(
                            fontSize: 9,
                            color: Color(0xFF007A5E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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