import 'package:flutter/material.dart';
import 'package:responsive_app/models/transaction_model.dart';
import 'package:responsive_app/utils/style_app.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: FontsAppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.subtitle,
          style: FontsAppStyles.styleRegular16(context),
        ),
        trailing: Text(transactionModel.amount,
            style: FontsAppStyles.styleSemiBold20(context).copyWith(
              color: transactionModel.withDrawel
                  ? const Color(0xffF3735E)
                  : const Color(0xff7CD87A),
            )),
      ),
    );
  }
}
