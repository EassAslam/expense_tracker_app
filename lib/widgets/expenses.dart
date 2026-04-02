 import 'package:expense_tracker_app/models/Expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';


class Expenses extends StatefulWidget {
  const Expenses ({super.key});
  @override
  State<StatefulWidget> createState() {
    
    return _ExpensesState();
  }

}
class _ExpensesState extends State<Expenses>{

final List<Expense> _registeredExpenses = [
  Expense(
    title: 'Pizza hut',
    amount: 25.00,
    date: DateTime.now(),
    catagory: Catagory.food
  ),
  Expense(
    title: 'Train ticket to MA',
    amount: 3.25,
    date: DateTime.now(),
    catagory: Catagory.travel
  ),
  Expense(
    title: 'Movie Ticket',
    amount: 10.99,
    date: DateTime.now(),
    catagory: Catagory.leisure
  ),
];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
      title: const Text("Expense Tracker"),
      actions: [
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ), // IconButton
      ],
    ),
      body: Column(
        children: [
          Text("Chart here"),
          
          Expanded( 
            child: ExpensesList(expenses:_registeredExpenses)),
        ],
      )
    );
  }
  
}