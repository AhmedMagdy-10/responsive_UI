import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/views/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  static List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: '20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: '20.129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: '20,129'),
  ];
  int itemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = 0;
              });
            },
            child: AllExpensesItem(
                expensesItemModel: items[0], isActive: itemIndex == 0),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = 1;
              });
            },
            child: AllExpensesItem(
                expensesItemModel: items[1], isActive: itemIndex == 1),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = 2;
              });
            },
            child: AllExpensesItem(
                expensesItemModel: items[2], isActive: itemIndex == 2),
          ),
        ),
      ],
    );
  }
}
