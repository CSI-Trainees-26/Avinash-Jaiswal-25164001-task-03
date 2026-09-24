import 'package:flutter/material.dart';

// Delivery Banner

class DeliveryBanner extends StatelessWidget {
  const DeliveryBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.symmetric(horizontal: 7),
      height: 34,
      decoration: BoxDecoration(
        color: const Color(0xFFFFB300),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Row(
        children: [
          Icon(Icons.flash_on, size: 12),
          SizedBox(width: 4),
          Text(
            'Delivery in 10-12 mins to Greenwood Apartments',
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// Product Price

class ProductPrice extends StatelessWidget {
  final String price;
  final String offer;

  const ProductPrice({
    super.key,
    required this.price,
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF007A5E),
          ),
        ),
        const SizedBox(width: 5),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
            color: const Color(0xFFFFE8D5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            offer,
            style: const TextStyle(
              fontSize: 9,
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

// Pack Option

class PackOption extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final bool selected;

  const PackOption({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.white : const Color(0xFFF1F3FF),
        borderRadius: BorderRadius.circular(7),
        border: selected
            ? Border.all(color: const Color(0xFF007A5E))
            : null,
      ),
      child: Row(
        children: [
          if (selected)
            const Icon(
              Icons.check_circle,
              color: Color(0xFF007A5E),
              size: 12,
            ),
          if (selected) const SizedBox(width: 6),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Text(
            price,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// Rating

class RatingInfo extends StatelessWidget {
  const RatingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          decoration: BoxDecoration(
            color: const Color(0xFF007A5E),
            borderRadius: BorderRadius.circular(3),
          ),
          child: const Text(
            '4.8 ★',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          '1,240 verified ratings',
          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600, color: Colors.grey ),
        ),
        const Spacer(),
        const Text(
          'Read Reviews ›',
          style: TextStyle(
            fontSize: 12,
            color: Color(0xFF007A5E),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// Product Information

class ProductInfoCard extends StatelessWidget {
  const ProductInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Description & Highlights',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_down,
                size: 15,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            'Premium grade Hass avocados characterized by their dark, '
                'bumpy skin and buttery-rich flesh. Packed with healthy '
                'monounsaturated fats.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }
}