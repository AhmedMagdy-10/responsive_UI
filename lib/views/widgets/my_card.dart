import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/utils/style_app.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesCardBackground),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xff4EB7F2),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          ListTile(
            contentPadding: const EdgeInsets.only(left: 31, right: 42, top: 10),
            title: Text('Name card',
                style: FontsAppStyles.styleRegular16(context)
                    .copyWith(color: Colors.white)),
            subtitle: Text(
              'Beboo',
              style: FontsAppStyles.styleMedium20(context),
            ),
            trailing: SvgPicture.asset(Assets.imagesGallery),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '1205 1245 3320 4563',
                  style: FontsAppStyles.styleSemiBold24(context)
                      .copyWith(color: Colors.white),
                ),
                Text(
                  '12/20 - 124',
                  style: FontsAppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 24,
            ),
          ),
        ]),
      ),
    );
  }
}
