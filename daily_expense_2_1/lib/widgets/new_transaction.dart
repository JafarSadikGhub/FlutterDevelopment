import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(
      this.addTx); //we will find pointer of a function from user_transaction. we will just pass it to this param
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        color: Colors.redAccent,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Title'),
                controller: titleController,
                // onChanged: (val) {
                //   titleInput = val;
                // },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Amount'),
                controller: amountController,
                // onChanged: (val) {
                //   amountInput = val;
                // },
              ),
              FlatButton(
                onPressed: () {
                  addTx(titleController.text, double.parse(amountController.text),);
                },
                child: Text('Add Transaction'),
                textColor: Colors.green,
              )
            ],
          ),
        ),
      
    );
  }
}
