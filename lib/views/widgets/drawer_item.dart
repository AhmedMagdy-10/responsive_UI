import 'package:flutter/material.dart';

import 'package:responsive_app/models/drawer_item.dart';
import 'package:responsive_app/utils/app_images.dart';

import 'package:responsive_app/views/widgets/inactive_and_active_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isActive,
  });

  final DrawerItemModel drawerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveListItem(drawerItemModel: drawerItemModel)
        : InactiveListItem(drawerItemModel: drawerItemModel);
  }
}

class DrawerItemList extends StatefulWidget {
  const DrawerItemList({super.key});

  @override
  State<DrawerItemList> createState() => _DrawerItemListState();
}

class _DrawerItemListState extends State<DrawerItemList> {
  final List<DrawerItemModel> item = const [
    DrawerItemModel(
      text: 'Dashbord',
      image: Assets.imagesDashboard,
    ),
    DrawerItemModel(
      text: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawerItemModel(
      text: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawerItemModel(
      text: 'Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  int activeItem = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeItem != index) {
              activeItem = index;
              setState(() {});
            }
          },
          child: DrawerItem(
            drawerItemModel: item[index],
            isActive: activeItem == index,
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      itemCount: item.length,
    );
  }
}
