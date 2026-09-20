import 'package:flutter/material.dart';
import 'cart-data.dart';


class ProductDetailsPage extends StatefulWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final String offer;

  const ProductDetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    required this.offer,
  });

  @override
  State<ProductDetailsPage> createState() {
    return _ProductDetailsPageState();
  }
}
class _ProductDetailsPageState
    extends State<ProductDetailsPage> {
   int quantity = 1;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),

          title: const Text(
            'Product Details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
          ],
        ),

        body: SingleChildScrollView(

          child: Column(
            children: [
              // item image

              Container(
                height: 280,
                width: double.infinity,

                color: const Color(0xFFE8F5EF),

                // image add here at last
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,),
              ),

              // delivery msg

              const SizedBox(height: 10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),

                child: Container(
                  height: 40,

                  padding: const EdgeInsets.symmetric(horizontal: 12),

                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    children: [

                      const Icon(
                        Icons.flash_on,
                        color: Colors.black,
                        size: 18,
                      ),

                      const SizedBox(width: 5),

                      const Expanded(
                        child: Text(
                          'Delivery in 10-12 mins to your location',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      const Icon(
                        Icons.chevron_right,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),

              //   item info

              Padding(
                padding: const EdgeInsets.all(20),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                     Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      'Freshly sourced from local farms and trusted orchards',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Text(
                          widget.price,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(width: 8),

                        Text(
                          widget.price,
                          style: const TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),

                        const SizedBox(width: 8),

                        Text(
                          widget.offer,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const Text(
                      '(Inclusive of all taxes)',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),

                  ],
                ),
              ),

              //   price section

              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const Row(
                  children: [

                    Text(
                      '₹120',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF007A5E),
                      ),
                    ),

                    SizedBox(width: 10),

                    Text(
                      '₹150',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),

                    SizedBox(width: 10),

                    Text(
                      '20% OFF',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),

              // offer box
              const SizedBox(height: 10),
              // Ist offer
              Padding(
                padding: const EdgeInsets.all(8.0),

                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    children: [

                      const Icon(
                        Icons.check_circle,
                        color: Color(0xFF007A5E),
                        size: 18,
                      ),

                      const SizedBox(width: 10),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text(
                              '2 pcs (Pack of 2)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              '~300g - 350g (Ripe & Ready)',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),

                      const Text(
                        '₹149',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF007A5E),
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              // Other offers
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F1FF),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    children: [

                      const Icon(
                        Icons.circle,
                        color: Color(0xFFE0E3F5),
                        size: 18,
                      ),

                      const SizedBox(width: 10),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text(
                              '4 pcs (Family Pack)',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              '~650g - 700g',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),

                      const Text(
                        '₹279',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 3rd offer
              const SizedBox(height: 8),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),

                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F1FF),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Row(
                    children: [

                      const Icon(
                        Icons.circle,
                        color: Color(0xFFE0E3F5),
                        size: 18,
                      ),

                      const SizedBox(width: 10),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                            Text(
                              '1 kg Bulk Crate',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              '~5-6 apples',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),

                          ],
                        ),
                      ),

                      const Text(
                        '₹599',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // rating of item

              const SizedBox(height: 15),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  children: [

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xFF007A5E),
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: const Row(
                        children: [

                          Text(
                            '4.8',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(width: 3),

                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 14,
                          ),

                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    const Text(
                      '1,240 verified ratings',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'Read Reviews',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF007A5E),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),


              // Description of item

              const SizedBox(height: 20),

              const Text(
                'PRODUCT INFORMATION',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 8),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(15),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [

                        const Text(
                          'Description & Highlights',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                          ),
                        ),
                      ],
                    ),

                    const Text(
                      'Fresh, juicy and naturally sweet apples sourced '
                          'from trusted farms. Perfect for snacking, salads '
                          'and everyday healthy meals.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // add button
      bottomNavigationBar: SafeArea(
        top:false,
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              // Price and quantity
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),

                      Text(
                        '₹${int.parse(widget.price.replaceAll('₹', '')) * quantity}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  // Quantity selector
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFF007A5E),
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            if (quantity > 1) {
                              setState(() {
                                quantity--;
                              });
                            }
                          },
                          icon: const Icon(Icons.remove),
                          color: const Color(0xFF007A5E),
                        ),

                        Text(
                          '$quantity',
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        IconButton(
                          onPressed: () {
                            setState(() {
                              quantity++;
                            });
                          },
                          icon: const Icon(Icons.add),
                          color: const Color(0xFF007A5E),
                        ),
                      ],
                    ),
                  ),

                ],
              ),

              const SizedBox(height: 10),

              // Add to Cart button
              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton.icon(
                  onPressed: () {
                    addToCart(
                      image: widget.image,
                      name: widget.name,
                      quantity: widget.quantity,
                      price: int.parse(
                        widget.price.replaceAll('₹', ''),
                      ),
                      offer: widget.offer,
                      cartQuantity: quantity,
                    );

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Added to cart'),
                      ),
                    );
                  },

                  icon: const Icon(Icons.add),

                  label: const Text('Add to Cart'),

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF007A5E),
                    foregroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      );

  }
 }
