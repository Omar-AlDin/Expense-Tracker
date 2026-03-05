import 'package:flutter/material.dart';
import 'package:tracker/expense.dart';
import 'package:tracker/expenses_list.dart';
class Expenses extends StatefulWidget {
  const Expenses({super.key});
@override
  State<Expenses> createState() {
    return _ExpensesState();
  }

}
class _ExpensesState extends State<Expenses>{
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
     Expense(
      title: 'Talabat',
      amount: 105,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'LA',
      amount: 12000,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        
        children: [
/* Text('The chart'),
Text('The user image'),
Text('Subscription type'),
Text('email'),
Text('Date of subscription'),
Text('Edit profile and View progress'),
Text('The progress list; Workouts active days, calories, day streak'),
Text('the Overview list; Ovriew, Goals, Actiivty, Badges'),
Text("I'm back bitches!"),
*/
Expanded(
  child:ExpensesList(expenses: _registeredExpenses),
),

      ],)
    );
  }
}