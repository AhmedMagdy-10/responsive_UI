import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/all_expenses_header.dart';
import 'package:responsive_app/views/widgets/custom_background_conatiner.dart';
import 'package:responsive_app/views/widgets/income_chart.dart';
import 'package:responsive_app/views/widgets/income_details.dart';

class IncomeSeaction extends StatelessWidget {
  const IncomeSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AllExpensesHeader(headerTitle: 'Income'),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 200,
                  maxWidth: 200,
                ),
                child: const IncomeflChart(),
              ),
              const IncomeDetailsList(),
            ],
          ),
        ],
      ),
    );
  }
}
