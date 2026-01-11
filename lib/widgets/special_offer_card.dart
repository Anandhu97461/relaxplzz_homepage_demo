import 'package:flutter/material.dart';

class SpecialOfferCard extends StatelessWidget {
  final Color backgroundColor;
  final Color vectorColor;
  final String title;
  final String subtitle;
  final String offerText;
  final String image;

  const SpecialOfferCard({
    super.key,
    required this.backgroundColor,
    required this.vectorColor,
    required this.title,
    required this.subtitle,
    required this.offerText,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 190,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            // ===== LAYER 1: BASE =====
            Container(color: backgroundColor),

            // ===== LAYER 2: VECTORS =====
            Positioned(
              top: -8,
              left: -8,
              child: Image.asset(
                'assets/vector_top.png',
                width: 120,
                color: vectorColor,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),

            Positioned(
              bottom: -8,
              right: -8,
              child: Image.asset(
                'assets/vector_bottom.png',
                width: 120,
                color: vectorColor,
                colorBlendMode: BlendMode.srcIn,
              ),
            ),

            // ===== LAYER 3: PRODUCT IMAGE =====
            Positioned(
              right: 16,
              top: 35,
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 30,
                      spreadRadius: 6,
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),

            // ===== LAYER 4: TEXT =====
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 160, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    offerText,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // ===== SUNFLOWER =====
            // Positioned(
            //   left: 6,
            //   bottom: 6,
            //   child: IgnorePointer(
            //     child: Opacity(
            //       opacity: 0.85,
            //       child: Image.asset(
            //         'assets/sunflower.png',
            //         width: 36,
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //   ),
            // ),

            // ===== CTA BUTTON =====
            Positioned(left: 20, bottom: 22, child: _BuyNowButton()),
          ],
        ),
      ),
    );
  }
}

class _BuyNowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: const Text(
        'Buy Now',
        style: TextStyle(
          color: Colors.white,
          fontSize: 13,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
