import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste_dev/components/period.dart';

class PeriodList extends StatelessWidget {
  const PeriodList({
    super.key,
    required this.periods,
  });

  final List<Period> periods;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: periods.length,
        itemBuilder: (_, index) {
          return Card(
            child: ListTile(
              title: Text(
                periods[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                '${DateFormat('dd/MM/yy').format(periods[index].start)} a ${DateFormat('dd/MM/yy').format(periods[index].ends)}',
              ),
            ),
          );
        },
      ),
    );
  }
}
