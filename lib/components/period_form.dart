import 'dart:math';

import 'package:flutter/material.dart';
import 'package:teste_dev/components/date_selection_button.dart';
import 'package:teste_dev/components/period.dart';
import 'package:teste_dev/components/period_kind.dart';

class PeriodForm extends StatefulWidget {
  final void Function(Period) onSubmit;

  const PeriodForm({
    super.key,
    required this.onSubmit,
  });

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
            /* const Padding(
              padding: EdgeInsets.all(8.0),
              child: ValueInput(
                label: 'Categoria',
                selector: null,
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Meta 1'),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Meta 2'),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () => widget.onSubmit(
                Period(
                  title: titleCtrl.value.toString(),
                  start: _startDate,
                  ends: _endsDate,
                  kind: PeriodKind.category_1,
                  goal1: Random().nextInt(1000),
                  goal2: Random().nextInt(1000),
                ),
              ),
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
