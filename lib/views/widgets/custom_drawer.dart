import 'package:flutter/material.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/views/widgets/custom_user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTitle(
            title: 'Ahmed Magdy',
            subTitle: 'bebo@gmail.com',
            image: Assets.imagesAvatar3,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
