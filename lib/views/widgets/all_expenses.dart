import 'package:flutter/material.dart';

import 'package:responsive_app/views/widgets/all_expenses_header.dart';
import 'package:responsive_app/views/widgets/all_expenses_item_list.dart';
import 'package:responsive_app/views/widgets/custom_background_conatiner.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
