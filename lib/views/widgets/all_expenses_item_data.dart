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
        Text(
          title,
          style: FontsAppStyles.styleSemiBold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          date,
          style: FontsAppStyles.styleSemiBold16.copyWith(color: Colors.grey),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          '\$$price',
          style: FontsAppStyles.styleSemiBold24,
        ),
      ],
    );
  }
}
