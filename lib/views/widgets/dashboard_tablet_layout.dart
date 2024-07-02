import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/all_expenses.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';
import 'package:responsive_app/views/widgets/income_seaction_tablet.dart';
import 'package:responsive_app/views/widgets/my_card_and_transaction_history_seaction.dart';
import 'package:responsive_app/views/widgets/quick_invoice.dart';

class DashBoardTabletLayout extends StatelessWidget {
  const DashBoardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpenses(),
                  QuickInvoice(),
                  SizedBox(
                    height: 24,
                  ),
                  MyCardAndTransactionSeaction(),
                  SizedBox(
                    height: 24,
                  ),
                  IncomeSeactionTablet()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
