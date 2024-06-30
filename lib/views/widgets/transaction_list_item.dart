import 'package:flutter/material.dart';
import 'package:responsive_app/models/transaction_model.dart';
import 'package:responsive_app/views/widgets/transaction_history_item.dart';

class TransactionListItem extends StatelessWidget {
  const TransactionListItem({super.key});

  static List<TransactionModel> items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        subtitle: '13 Apr,2022',
        amount: '\$20,129',
        withDrawel: true),
    TransactionModel(
        title: 'Landing Page project',
        subtitle: '13 Apr,2022 at 3:30 PM',
        amount: '\$2,000',
        withDrawel: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        subtitle: '13 Apr,2022 at 3:30 PM',
        amount: '\$20,129',
        withDrawel: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
      itemCount: items.length,
    );
  }
}
