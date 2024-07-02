import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/all_expenses.dart';
import 'package:responsive_app/views/widgets/income_seaction.dart';
import 'package:responsive_app/views/widgets/my_card_and_transaction_history_seaction.dart';
import 'package:responsive_app/views/widgets/quick_invoice.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
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
          IncomeSeaction()
        ],
      ),
    );
  }
}
