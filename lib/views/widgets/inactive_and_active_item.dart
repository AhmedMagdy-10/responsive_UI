import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/models/drawer_item.dart';
import 'package:responsive_app/utils/style_app.dart';

class InactiveListItem extends StatelessWidget {
  const InactiveListItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.text,
        style: FontsAppStyles.styleMedium16,
      ),
    );
  }
}

class ActiveListItem extends StatelessWidget {
  const ActiveListItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.text,
        style: FontsAppStyles.styleBold16,
      ),
      trailing: Container(
        width: 4,
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
