import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
        )
      ],
    );
  }
}
