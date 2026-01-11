import 'package:flutter/material.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: const [
          _PromoCard(
            backgroundColor: Color(0xFFF2C078),
            title: 'Order before 2PM for\nsame day delivery',
            subtitle: 'Accept all type of payments',
            image: 'assets/oil.png',
          ),

          SizedBox(width: 12),
          _PromoCard(
            backgroundColor: Color(0xFFF28B82),
            title: 'Free delivery on\nfirst order',
            subtitle: 'Limited time offer',
            image: 'assets/snacks.png',
          ),
        ],
      ),
    );
  }
}

class _PromoCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String subtitle;
  final String image;

  const _PromoCard({
    required this.backgroundColor,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 160,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // LEFT CONTENT
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 4),

                Text(
                  title,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    height: 1.25,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const Spacer(), // FOR PUTTING BUTTON-LIKE TEXT TO THE BOTTOM

                Container(
                  height: 33,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Best price, Best Deals, Save a lot',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          // RIGHT IMAGE
          Container(
            width: 92,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(5),
            child: Image.asset(image, fit: BoxFit.contain),
          ),
        ],
      ),
    );
  }
}
