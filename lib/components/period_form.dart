import 'package:flutter/material.dart';
import 'package:teste_dev/components/date_selection_button.dart';

class PeriodForm extends StatefulWidget {
  const PeriodForm({super.key});

  @override
  State<PeriodForm> createState() {
    return _PeriodForm();
  }
}

class _PeriodForm extends State<PeriodForm> {
  final titleCtrl = TextEditingController();
  DateTime _startDate = DateTime.now();
  DateTime _endsDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.3,
      margin: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: titleCtrl,
            decoration: const InputDecoration(
              label: Text(
                'Nomeie seu periodo',
              ),
            ),
          ),
          DateSelectionButton(
            label: 'Começa',
            date: _startDate,
            onDateChange: (newDate) => setState(() {
              _startDate = newDate;
            }),
          ),
          DateSelectionButton(
            label: 'Termina',
            date: _endsDate,
            onDateChange: (newDate) => setState(() {
              _endsDate = newDate;
            }),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Concluir',
            ),
          )
        ],
      ),
    );
  }
}
