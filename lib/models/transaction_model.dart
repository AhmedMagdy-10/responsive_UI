class TransactionModel {
  final String title, subtitle, amount;
  final bool withDrawel;

  TransactionModel(
      {required this.title,
      required this.subtitle,
      required this.amount,
      required this.withDrawel});
}
