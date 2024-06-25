import 'package:flutter/material.dart';

import 'package:responsive_app/models/all_expenses_item.dart';
import 'package:responsive_app/views/widgets/all_expenses_item_data.dart';

import 'package:responsive_app/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.expensesItemModel});
  final AllExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          AllExpensesItemData(
            title: expensesItemModel.title,
            date: expensesItemModel.date,
            price: expensesItemModel.price,
          ),
        ],
      ),
    );
  }
}
