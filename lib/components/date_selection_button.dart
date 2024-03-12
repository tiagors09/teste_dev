import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelectionButton extends StatelessWidget {
  final DateTime date;
  final void Function(DateTime) onDateChange;
  final String label;

  const DateSelectionButton({
    super.key,
    required this.date,
    required this.onDateChange,
    required this.label,
  });

  _openDatePicker(BuildContext ctx) {
    showDatePicker(
      context: ctx,
      firstDate: DateTime(1999),
      lastDate: DateTime(DateTime.now().year + 10),
    ).then(
      (newDate) => onDateChange(newDate!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
        ),
        TextButton(
          onPressed: () => _openDatePicker(context),
          child: Text(DateFormat('dd/MM/yyyy').format(date)),
        ),
      ],
    );
  }
}
