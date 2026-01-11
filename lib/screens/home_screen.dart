import 'package:flutter/material.dart';
import 'package:relaxplzz_kstore/widgets/promo_carousel.dart';
import 'package:relaxplzz_kstore/widgets/special_offer_carousel.dart';
import '../models/product.dart';
import '../widgets/category_item.dart';
import '../widgets/product_card.dart';
import '../widgets/section_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      Product(
        name: 'Cooking Oil 1L',
        image: 'assets/oil.png',
        price: 100,
        oldPrice: 120,
        unit: '1L',
      ),
      Product(
        name: 'Everest Chicken Masala',
        image: 'assets/masala.jpg',
        price: 10,
        unit: '100 g',
      ),
    ];

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // PINK GRADIENT BACKGROUND
              Container(
                height: 240,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFFE91E63), Color(0xFFFF7043)],
                  ),
                ),
              ),

              // HEADER CONTENT (LOCATION + ICONS)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // LOCATION
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Delivery 10 minutes',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'Singapore',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        // ICONS
                        Row(
                          children: [
                            _IconWithDot(icon: Icons.shopping_cart_outlined),
                            SizedBox(width: 14),
                            _IconWithDot(icon: Icons.notifications_none),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Search bar
                    Container(
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey),
                          SizedBox(width: 8),
                          Text(
                            'Products',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Icon(Icons.tune, color: Colors.grey),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // WHITE CURVED CONTENT
              Container(
                margin: const EdgeInsets.only(top: 150),
                padding: const EdgeInsets.only(top: 24),
                decoration: const BoxDecoration(
                  color: Color(0xFFF5F6F8),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SectionHeader(title: 'Category'),
                    const SizedBox(height: 12),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GridView.count(
                        crossAxisCount: 4,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        childAspectRatio: 0.75,
                        children: const [
                          CategoryItem(
                            title: 'Food',
                            image: 'assets/grains.png',
                          ),
                          CategoryItem(
                            title: 'Edible Oil',
                            image: 'assets/oil.png',
                          ),
                          CategoryItem(
                            title: 'Spices',
                            image: 'assets/spices.png',
                          ),
                          CategoryItem(
                            title: 'Instant',
                            image: 'assets/instant.png',
                          ),
                          CategoryItem(title: 'Milk', image: 'assets/milk.png'),
                          CategoryItem(
                            title: 'Snacks',
                            image: 'assets/snacks.png',
                          ),
                          CategoryItem(
                            title: 'Beverages',
                            image: 'assets/beverages.png',
                          ),
                          CategoryItem(
                            title: 'Personal',
                            image: 'assets/personal.png',
                          ),
                          CategoryItem(
                            title: 'Health Care',
                            image: 'assets/healthcare.png',
                          ),
                          CategoryItem(
                            title: 'Household',
                            image: 'assets/household.png',
                          ),
                          CategoryItem(
                            title: 'Fruits',
                            image: 'assets/fruits.png',
                          ),
                          CategoryItem(
                            title: 'All Others',
                            image: 'assets/others.png',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    PromoCarousel(),

                    const SizedBox(height: 20),
                    const SectionHeader(title: 'Flash Sale'),
                    const SizedBox(height: 20),

                    SizedBox(
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 16),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: products[index]);
                        },
                      ),
                    ),

                    const SizedBox(height: 16),
                    const SpecialOfferCarousel(),
                    const SizedBox(height: 28),

                    const SectionHeader(title: 'Best Selling'),
                    const SizedBox(height: 12),

                    SizedBox(
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 16),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: products[index]);
                        },
                      ),
                    ),

                    const SizedBox(height: 32),
                    const SectionHeader(title: 'Most Popular'),
                    const SizedBox(height: 12),

                    SizedBox(
                      height: 260,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 16),
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: products[index]);
                        },
                      ),
                    ),

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconWithDot extends StatelessWidget {
  final IconData icon;

  const _IconWithDot({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Icon(icon, color: Colors.white, size: 24),
        Positioned(
          top: -2,
          right: -2,
          child: Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
