import 'package:flutter/material.dart';
import 'package:responsive_app/models/income_details_item_model.dart';
import 'package:responsive_app/views/widgets/income_details_item.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});

  static List<IncomeDetailsItemModel> items = [
    IncomeDetailsItemModel(
      title: 'Design service',
      amount: '40%',
      color: const Color(0xff208BC7),
    ),
    IncomeDetailsItemModel(
      title: 'Design product',
      amount: '25%',
      color: const Color(0xff4DB7F2),
    ),
    IncomeDetailsItemModel(
      title: 'Product royalti',
      amount: '20%',
      color: const Color(0xff064060),
    ),
    IncomeDetailsItemModel(
      title: 'Other',
      amount: '22%',
      color: const Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(
          incomeDetailsItemModel: items[index],
        );
      },
      itemCount: items.length,
    );
  }
}
