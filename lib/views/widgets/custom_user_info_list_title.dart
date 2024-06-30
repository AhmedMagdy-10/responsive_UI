import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/models/quick_invoice_item.dart';
import 'package:responsive_app/utils/style_app.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: Text(
            userInfoModel.title,
            style: FontsAppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: FontsAppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
