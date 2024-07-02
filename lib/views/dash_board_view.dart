import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/adaptive_layout.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';
import 'package:responsive_app/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_app/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_app/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < 800
            ? AppBar(
                backgroundColor: const Color(0xffFAFAFA),
                elevation: 0,
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              )
            : null,
        drawer: MediaQuery.sizeOf(context).width < 800
            ? const CustomDrawer()
            : null,
        backgroundColor: const Color(0xffF7F9FA),
        body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tabletLayout: (context) => const DashBoardTabletLayout(),
          desktopLayout: (context) => const DashBoardDestopLayout(),
        ));
  }
}
