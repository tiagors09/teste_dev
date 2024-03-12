import 'package:flutter/material.dart';
import 'package:teste_dev/components/period.dart';
import 'package:teste_dev/components/period_form.dart';
import 'package:teste_dev/components/period_kind.dart';
import 'package:teste_dev/components/period_list.dart';
import 'package:teste_dev/components/header.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _onSubmit(Period p) {
    setState(() {
      periods.add(p);
    });
    periods.map((e) => print(e));
  }

  List<Period> get periods {
    return [
      Period(
        title: 'Period 1',
        start: DateTime(2024, 3, 1),
        ends: DateTime(2024, 3, 10),
        kind: PeriodKind.category_1,
        goal1: 100,
        goal2: 150,
      ),
      Period(
        title: 'Period 2',
        start: DateTime(2024, 3, 11),
        ends: DateTime(2024, 3, 20),
        kind: PeriodKind.category_1,
        goal1: 120,
        goal2: 180,
      ),
      Period(
        title: 'Period 3',
        start: DateTime(2024, 3, 21),
        ends: DateTime(2024, 3, 31),
        kind: PeriodKind.category_1,
        goal1: 90,
        goal2: 130,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      title: const Text('Configurações'),
      leading: BackButton(
        onPressed: () {},
      ),
    );

    var floatingActionButton = FloatingActionButton(
      child: const Icon(
        Icons.add,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            scrollable: true,
            title: const Text(
              'Novo período',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: PeriodForm(
              onSubmit: _onSubmit,
            ),
          ),
        );
      },
    );

    var container = Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Header(
            path: 'https://via.placeholder.com/150/92c952',
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: const Text(
              'Períodos',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          PeriodList(periods: periods),
        ],
      ),
    );

    return Scaffold(
      floatingActionButton: floatingActionButton,
      appBar: appBar,
      body: container,
    );
  }
}
