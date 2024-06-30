import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndectorDots extends StatelessWidget {
  const PageIndectorDots({super.key, required this.controller});

  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      axisDirection: Axis.horizontal,
      count: 3,
      effect: const ExpandingDotsEffect(
        spacing: 8.0,
        radius: 10,
        dotWidth: 8,
        dotHeight: 8,
        activeDotColor: Colors.blue,
        strokeWidth: 1.5,
      ),
    );
  }
}
