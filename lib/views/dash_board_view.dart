import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/adaptive_layout.dart';
import 'package:responsive_app/views/widgets/dashboard_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
        ),
        body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashBoardDestopLayout(),
        ));
  }
}
