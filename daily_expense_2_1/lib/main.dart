import 'package:daily_expense_2_1/widgets/new_transaction.dart';
import 'package:daily_expense_2_1/widgets/transaction_list.dart';
import 'package:daily_expense_2_1/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import './models/transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      
      body: SingleChildScrollView(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Card(
                    child: Text('CHART'),
                    elevation: 5,
                    color: Colors.yellow[300],
                  ),
                ),
                // NewTransaction(),
                // TransactionList(),
                UserTransactions()
              ]),
      ),
      
    );
  }
}
