import 'package:flutter/material.dart';
import 'package:responsive_app/models/all_expenses_item.dart';
import 'package:responsive_app/utils/style_app.dart';
import 'package:responsive_app/views/widgets/all_expenses_item_data.dart';
import 'package:responsive_app/views/widgets/all_expenses_item_header.dart';

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final AllExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: expensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          AllExpensesItemData(
            title: expensesItemModel.title,
            date: expensesItemModel.date,
            price: expensesItemModel.price,
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final AllExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            color: Color(0xff4EB7F2),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            backgroundImage: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: expensesItemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expensesItemModel.title,
            style: FontsAppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesItemModel.date,
            style: FontsAppStyles.styleSemiBold16.copyWith(
              color: const Color(0xffFAFAFA),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '\$${expensesItemModel.price}',
            style: FontsAppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
