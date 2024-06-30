import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';
import 'package:responsive_app/views/widgets/dots_indector_page.dart';
import 'package:responsive_app/views/widgets/my_card_page_view.dart';

class MyCardSeaction extends StatelessWidget {
  const MyCardSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My Card',
            style: FontsAppStyles.styleSemiBold20.copyWith(color: Colors.black),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(controller: pageController),
        const SizedBox(
          height: 20,
        ),
        PageIndectorDots(
          controller: pageController,
        ),
      ],
    );
  }
}
