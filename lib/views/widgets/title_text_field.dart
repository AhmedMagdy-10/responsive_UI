import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';
import 'package:responsive_app/views/widgets/custom_text_filed.dart';

class TitleTextfield extends StatelessWidget {
  const TitleTextfield({super.key, required this.hint, required this.title});
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: FontsAppStyles.styleRegular16,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomTextField(hint: hint),
      ],
    );
  }
}
