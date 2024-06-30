import 'package:flutter/material.dart';
import 'package:responsive_app/models/quick_invoice_item.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/views/widgets/custom_user_info_list_title.dart';

class LatestTransactionItemList extends StatelessWidget {
  const LatestTransactionItemList({super.key});

  static List<UserInfoModel> users = [
    UserInfoModel(
        title: 'Madrani Andi',
        subTitle: 'madrani200@gmail.com',
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: 'Josua Nunito',
        subTitle: 'josuanunito@gmail.com',
        image: Assets.imagesAvatar2),
    UserInfoModel(
        title: 'Bebooo',
        subTitle: 'bebo007@gmail.com',
        image: Assets.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffFAFAFA),
            ),
            child: IntrinsicWidth(
              child: UserInfoListTitle(
                userInfoModel: users[index],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: users.length,
      ),
    );
  }
}
