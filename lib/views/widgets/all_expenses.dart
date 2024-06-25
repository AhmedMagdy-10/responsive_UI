import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/views/widgets/all_expenses_header.dart';
import 'package:responsive_app/views/widgets/all_expenses_item.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(
            height: 16,
          ),
          AllExpensesItem(
            expensesItemModel: AllExpensesItemModel(
              image: Assets.imagesIncome,
              title: 'Income',
              date: 'April 2022',
              price: '20.129',
            ),
          ),
        ],
      ),
    );
  }
}
