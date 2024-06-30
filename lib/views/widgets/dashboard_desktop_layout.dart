import 'package:flutter/material.dart';
import 'package:responsive_app/main.dart';
import 'package:responsive_app/views/widgets/all_expenses.dart';
import 'package:responsive_app/views/widgets/custom_drawer.dart';
import 'package:responsive_app/views/widgets/income_chart.dart';
import 'package:responsive_app/views/widgets/income_seaction.dart';
import 'package:responsive_app/views/widgets/my_card.dart';
import 'package:responsive_app/views/widgets/my_card_and_transaction_history_seaction.dart';
import 'package:responsive_app/views/widgets/my_card_section.dart';
import 'package:responsive_app/views/widgets/quick_invoice.dart';
import 'package:responsive_app/views/widgets/transaction_history.dart';

class DashBoardDestopLayout extends StatelessWidget {
  const DashBoardDestopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice(),
            ],
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: IncomeSeaction(),
        )
      ],
    );
  }
}
