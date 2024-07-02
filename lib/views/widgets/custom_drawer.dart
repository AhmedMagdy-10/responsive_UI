import 'package:flutter/material.dart';
import 'package:responsive_app/models/drawer_item.dart';
import 'package:responsive_app/models/quick_invoice_item.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/views/widgets/custom_user_info_list_title.dart';
import 'package:responsive_app/views/widgets/drawer_item.dart';
import 'package:responsive_app/views/widgets/inactive_and_active_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTitle(
              userInfoModel: UserInfoModel(
                title: 'Ahmed Magdy',
                subTitle: 'bebo@gmail.com',
                image: Assets.imagesAvatar3,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 28,
            ),
          ),
          const DrawerItemList(),
          const SliverFillRemaining(
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
