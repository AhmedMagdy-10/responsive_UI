import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';

class AllExpensesItemData extends StatelessWidget {
  const AllExpensesItemData(
      {super.key,
      required this.title,
      required this.date,
      required this.price});
  final String title, date, price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: FontsAppStyles.styleSemiBold16(context),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            date,
            style: FontsAppStyles.styleSemiBold16(context)
                .copyWith(color: Colors.grey),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '\$$price',
            style: FontsAppStyles.styleSemiBold24(context),
          ),
        ),
      ],
    );
  }
}
