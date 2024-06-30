import 'package:flutter/material.dart';
import 'package:responsive_app/utils/style_app.dart';
import 'package:responsive_app/views/widgets/transaction_list_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: FontsAppStyles.styleMedium16,
        ),
        SizedBox(
          height: 16,
        ),
        TransactionListItem(),
      ],
    );
  }
}

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Trasaction History',
          style: FontsAppStyles.styleSemiBold20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: FontsAppStyles.styleMedium16.copyWith(
              color: const Color(0xff4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
