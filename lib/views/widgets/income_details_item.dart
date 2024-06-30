import 'package:flutter/material.dart';
import 'package:responsive_app/models/income_details_item_model.dart';
import 'package:responsive_app/utils/style_app.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});

  final IncomeDetailsItemModel incomeDetailsItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: incomeDetailsItemModel.color,
        radius: 5,
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: FontsAppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailsItemModel.amount,
        style: FontsAppStyles.styleMedium16
            .copyWith(color: const Color(0xff4EB7F2)),
      ),
    );
  }
}
