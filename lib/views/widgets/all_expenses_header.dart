import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: FontsAppStyles.styleSemiBold20.copyWith(color: Colors.black),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                color: Color(0xffF1F1F1),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Row(
            children: [
              const Text(
                'monthly',
                style: FontsAppStyles.styleMedium16,
              ),
              const SizedBox(
                width: 18,
              ),
              Transform.rotate(
                angle: -1.57079633,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff064060),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
