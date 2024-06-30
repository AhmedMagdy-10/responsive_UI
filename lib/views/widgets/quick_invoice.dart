import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/custom_background_conatiner.dart';
import 'package:responsive_app/views/widgets/latest_transaction.dart';
import 'package:responsive_app/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainerBackground(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 16,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        // QuickInvoiceForm(),
      ],
    ));
  }
}
