import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/views/widgets/custom_user_info_list_title.dart';
import 'package:responsive_app/views/widgets/drawer_item.dart';
import 'package:responsive_app/views/widgets/inactive_and_active_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              title: 'Ahmed Magdy',
              subTitle: 'bebo@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 28,
            ),
          ),
          DrawerItemList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 28,
                )),
                InactiveListItem(
                  drawerItemModel: DrawerItemModel(
                      text: 'Setting', image: Assets.imagesSettings),
                ),
                InactiveListItem(
                  drawerItemModel: DrawerItemModel(
                    text: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
