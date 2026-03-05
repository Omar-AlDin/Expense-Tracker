import 'package:flutter/material.dart';
import 'package:tracker/expense.dart';
import 'package:tracker/expense_item.dart';
class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    });
    
  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
itemCount: expenses.length,
itemBuilder: (context, index) => ExpenseItem(expense: expenses[index],),
    );
}
}