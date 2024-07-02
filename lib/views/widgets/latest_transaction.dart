import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';
import 'package:responsive_app/views/widgets/latest_transaction_item_list.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: FontsAppStyles.styleSemiBold16(context),
        ),
        SizedBox(
          height: 16,
        ),
        LatestTransactionItemList(),
      ],
    );
  }
}
