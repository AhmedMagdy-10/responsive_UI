import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/all_expenses_header.dart';
import 'package:responsive_app/views/widgets/custom_background_conatiner.dart';
import 'package:responsive_app/views/widgets/income_chart.dart';
import 'package:responsive_app/views/widgets/income_details.dart';

class IncomeSeaction extends StatelessWidget {
  const IncomeSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          AllExpensesHeader(headerTitle: 'Income'),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: IncomeflChart(),
                ),
                Expanded(
                  child: IncomeDetailsList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
