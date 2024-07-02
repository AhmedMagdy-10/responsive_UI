import 'package:flutter/material.dart';
import 'package:responsive_app/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextfield(
                    hint: 'Type customer name', title: 'Customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextfield(
                  hint: 'Type customer email', title: 'Customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextfield(
                    hint: 'Type customer name', title: 'Item name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextfield(hint: 'USD', title: 'Item mount'),
            ),
          ],
        )
      ],
    );
  }
}
