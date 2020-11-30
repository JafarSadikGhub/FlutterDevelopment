import 'package:daily_expense_2_1/models/transaction.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transactions added yet!',
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(height: 15,),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  color: Colors.orange,
                  child: Row(children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).primaryColor, width: 2),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${transactions[index].amount.toStringAsFixed(2)}', //String interpolation
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          transactions[index].title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          DateFormat('dd/MM/yy')
                              .format(transactions[index].date),
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    )
                  ]),
                );
              },
              itemCount: transactions.length,
              //   children: transactions.map((tx) {
              //   return
              // }).toList()
            ),
    );
  }
}
