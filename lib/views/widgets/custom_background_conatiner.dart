import 'package:flutter/material.dart';

class CustomContainerBackground extends StatelessWidget {
  const CustomContainerBackground({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Container(
          padding: EdgeInsets.all(padding ?? 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: child),
    );
  }
}
