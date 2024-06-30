import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_background_conatiner.dart';
import 'package:responsive_app/views/widgets/my_card_section.dart';
import 'package:responsive_app/views/widgets/transaction_history.dart';

class MyCardAndTransactionSeaction extends StatelessWidget {
  const MyCardAndTransactionSeaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
      child: Column(
        children: [
          MyCardSeaction(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
