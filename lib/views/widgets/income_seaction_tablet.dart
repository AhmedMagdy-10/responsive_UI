import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/all_expenses_header.dart';
import 'package:responsive_app/views/widgets/custom_background_conatiner.dart';
import 'package:responsive_app/views/widgets/income_chart.dart';
import 'package:responsive_app/views/widgets/income_details.dart';

class IncomeSeactionTablet extends StatelessWidget {
  const IncomeSeactionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          AllExpensesHeader(headerTitle: 'Income'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeflChart()),
              Expanded(child: IncomeDetailsList()),
            ],
          ),
        ],
      ),
    );
  }
}
