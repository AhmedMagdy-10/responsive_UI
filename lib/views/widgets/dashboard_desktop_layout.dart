import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';

class DashBoardDestopLayout extends StatelessWidget {
  const DashBoardDestopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
