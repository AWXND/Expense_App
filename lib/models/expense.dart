import 'package:hugeicons/hugeicons.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcon = {
  Category.food: HugeIcons.strokeRoundedServingFood,
  Category.travel: HugeIcons.strokeRoundedTravelBag,
  Category.leisure: HugeIcons.strokeRoundedMoney01,
  Category.work: HugeIcons.strokeRoundedWork,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get formattedDate {
    return formatter.format(date);
  }
}
