import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({required this.activeIndex, super.key});
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 3,
      effect: ExpandingDotsEffect(
        dotHeight: 8,
        expansionFactor: 2,
        dotColor: Colors.white.withOpacity(0.3),
        activeDotColor: Colors.white,
      ),
    );
  }
}
