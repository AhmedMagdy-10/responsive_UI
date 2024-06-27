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
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var items = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = e.key;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(
                  expensesItemModel: items, isActive: itemIndex == index),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                itemIndex = e.key;
              });
            },
            child: AllExpensesItem(
                expensesItemModel: items, isActive: itemIndex == e.key),
          ),
        );
      }
    }).toList());
  }
}
