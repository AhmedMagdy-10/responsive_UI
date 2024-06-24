import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_app/utils/style_app.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.image});
  final String title, subTitle, image;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(
          title,
          style: FontsAppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          subTitle,
          style: FontsAppStyles.styleRegular12,
        ),
      ),
    );
  }
}
