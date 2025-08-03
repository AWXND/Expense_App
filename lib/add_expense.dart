import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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

  void _presetPickDate() {
    final dateTime = DateTime.now();
    final firstDate = DateTime(
      dateTime.year,
      dateTime.month,
      dateTime.day,
    );
    final lastDate = DateTime(
      dateTime.year,
      dateTime.month,
      dateTime.day + 14,
    );
    showDatePicker(
      context: context,
      firstDate: firstDate,
      lastDate: lastDate,
    );
  }

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
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  maxLength: 50,

                  decoration: InputDecoration(
                    label: Text('amount'),
                    prefixText: 'Rp.',
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Select Date'),
                    IconButton(
                      onPressed: () {
                        _presetPickDate();
                      },
                      icon: HugeIcon(
                        icon: HugeIcons.strokeRoundedCalendar01,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Save Expense'),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Close'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
