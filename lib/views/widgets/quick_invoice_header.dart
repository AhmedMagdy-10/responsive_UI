import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: FontsAppStyles.styleSemiBold20(context)
              .copyWith(color: Colors.black),
        ),
        Container(
          height: 48,
          width: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
            ),
          ),
        ),
      ],
    );
  }
}
