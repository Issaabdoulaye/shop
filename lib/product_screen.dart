import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final String name;
  final String price;
  final double rating;
  final String imageUrl;

  const ProductScreen({
    super.key,
    required this.name,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F9FA),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black87,
                  size: 25,
                ),
              ),
            ),
            actions: [
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black87,
                  size: 25,
                ),
              ),
              SizedBox(width: 12),
              Container(
                // margin: EdgeInsets.all(12),
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black87,
                  size: 25,
                ),
              ),
              SizedBox(width: 12),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFF7FAFC), Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Container(
                    // width: 200,
                    // height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3748),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 48, 75, 199),
                              Color.fromARGB(255, 101, 25, 177),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 16),
                            SizedBox(width: 4),
                            Text(
                              rating.toStringAsFixed(1),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF667EEA),
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    ' Colors',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3748),
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      _buildColorOption(Colors.black, true),
                      _buildColorOption(Colors.blue, false),
                      _buildColorOption(Colors.amber, false),
                      _buildColorOption(Colors.redAccent, true),
                      _buildColorOption(Colors.green, false),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    ' Description',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D3748),
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Experience premium sound quality with these professional headphones. Featuring noise-cancellation technology, comfortable ear cups, and a sleek design, they are perfect for music lovers and professionals alike.',
                    style: TextStyle(fontSize: 16, color: Color(0xFF718096)),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFE2E8F0)),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Icon(
                          Icons.shopping_cart_checkout_outlined,
                          color: Color(0xFF667EEA),
                          size: 28,
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 48, 75, 199),
                                Color.fromARGB(255, 101, 25, 177),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorOption(Color color, bool isSelected) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isSelected ? Color(0xFF667EEA) : Colors.transparent,
          width: 3,
        ),
      ),
      child: isSelected
          ? Icon(Icons.check, color: Colors.white, size: 20)
          : null,
    );
  }
}
