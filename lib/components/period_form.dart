import 'package:flutter/material.dart';
import 'package:teste_dev/components/date_selection_button.dart';
import 'package:teste_dev/components/dropdown_selector.dart';

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
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.20,
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: titleCtrl,
                decoration: const InputDecoration(
                  label: Text(
                    'Nomeie seu periodo',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DateSelectionButton(
                label: 'Começa',
                date: _startDate,
                onDateChange: (newDate) => setState(() {
                  _startDate = newDate;
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DateSelectionButton(
                label: 'Termina',
                date: _endsDate,
                onDateChange: (newDate) => setState(() {
                  _endsDate = newDate;
                }),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DropdownSelector(label: 'Categoria'),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DropdownSelector(
                label: 'Meta 1',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: DropdownSelector(
                label: 'Meta 2',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Concluir',
              ),
            )
          ],
        ),
      ),
    );
  }
}
