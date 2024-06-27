import 'package:flutter/material.dart';

import 'package:responsive_app/models/all_expenses_item.dart';

import 'package:responsive_app/views/widgets/inactive_and_active_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.expensesItemModel, required this.isActive});

  final AllExpensesItemModel expensesItemModel;

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(expensesItemModel: expensesItemModel)
        : InactiveAllExpensesItem(expensesItemModel: expensesItemModel);
  }
}
