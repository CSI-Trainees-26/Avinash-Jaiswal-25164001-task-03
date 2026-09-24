import 'package:flutter/material.dart';
import 'product_widgets.dart';
import 'cart_widgets.dart';

class ProductDetailsPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String offer;
  final String quantity;

  const ProductDetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.offer,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 16),

              const DeliveryBanner(),

              const SizedBox(height: 16),

              Text(
                '$name ($quantity)',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                'Freshly sourced from New Zealand & Kenya partner orchards',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 12),

              ProductPrice(
                price: price,
                offer: offer,
              ),

              const SizedBox(height: 16),

              const Text(
                'SELECT PACK SIZE',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              const PackOption(
                title: '2 pcs (Pack of 2)',
                subtitle: '~300g - 350g',
                price: '₹149',
                selected: true,
              ),

              const SizedBox(height: 8),

              const PackOption(
                title: '4 pcs (Family Pack)',
                subtitle: '~650g - 700g',
                price: '₹279',
              ),

              const SizedBox(height: 8),

              const PackOption(
                title: '1 kg Bulk Crate',
                subtitle: '~5-6 apples',
                price: '₹599',
              ),

              const SizedBox(height: 16),

              const RatingInfo(),

              const SizedBox(height: 18),

              const Text(
                'PRODUCT INFORMATION',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              const ProductInfoCard(),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}