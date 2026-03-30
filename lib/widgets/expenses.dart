 import 'package:expense_tracker_app/models/Expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list.dart';
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
];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Text("Chart here"),
          
          SizedBox( 
            height:300,
            child: ExpensesList(expenses:_registeredExpenses)),
        ],
      )
    );
  }
  
}