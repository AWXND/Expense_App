import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AddExpenseState();
  }
}

class _AddExpenseState extends State<AddExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Add New Expense',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text('Title')),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            maxLength: 50,

            decoration: InputDecoration(
              label: Text('amount'),
              prefixText: 'Rp.',
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Save Expense'),
              ),
              Spacer(),
              ElevatedButton(onPressed: () {}, child: Text('Close')),
            ],
          ),
        ],
      ),
    );
  }
}
