import 'package:flutter/material.dart';
import 'special_offer_card.dart';

class SpecialOfferCarousel extends StatelessWidget {
  const SpecialOfferCarousel({super.key});

  // VECTOR COLOR DARKENING WITH BGCOLOR
  Color darken(Color c, [double amount = .15]) {
    final hsl = HSLColor.fromColor(c);
    return hsl
        .withLightness((hsl.lightness - amount).clamp(0.0, 1.0))
        .toColor();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 16),
        children: [
          SpecialOfferCard(
            backgroundColor: Color(0xFFF2C078),
            vectorColor: darken(Color(0xFFF2C078)),
            title: 'Special Offer',
            subtitle: 'Cold Press Sunflower Oil',
            offerText: '20% Offer',
            image: 'assets/oil.png',
          ),

          SizedBox(width: 14),
          SpecialOfferCard(
            backgroundColor: Color(0xFFF28B82),
            vectorColor: darken(Color(0xFFF28B82)),
            title: 'Special Offer',
            subtitle: 'Everest Chicken Masala',
            offerText: '20% Offer',
            image: 'assets/masala.jpg',
          ),
        ],
      ),
    );
  }
}
