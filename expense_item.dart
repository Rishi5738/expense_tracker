import 'package:expense_tracker_/models/expense.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  ExpenseItem(this.expense, {super.key});
  final Expense expense;
  final dateFormat =
      DateFormat('yyyy-MM-dd'); // Example format, customize as needed

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Card(
        child: Column(children: [
          Text(expense.title),
          const SizedBox(height: 4),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(width: 8),
                  Text(expense.formattedDate),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
