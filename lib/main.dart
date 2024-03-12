import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teste_dev/components/period.dart';
import 'package:teste_dev/components/period_form.dart';
import 'package:teste_dev/components/period_kind.dart';

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

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => const AlertDialog(
              scrollable: true,
              title: Text(
                'Novo período',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: PeriodForm(),
            ),
          );
        },
      ),
      appBar: AppBar(
        title: const Text('Configurações'),
        leading: BackButton(
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: (MediaQuery.of(context).size.width * 0.8) - 20,
                    padding: const EdgeInsets.all(8.0),
                    child: const TextField(
                      decoration: InputDecoration(
                        label: Text('Apelido'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: (MediaQuery.of(context).size.width * 0.2) - 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: MediaQuery.of(context).size.width < 800
                              ? () {}
                              : null,
                          icon: ClipRRect(
                            borderRadius: BorderRadius.circular(360),
                            child: Image.network(
                              'https://via.placeholder.com/150/92c952',
                            ),
                          ),
                        ),
                        Visibility(
                          visible: MediaQuery.of(context).size.width > 800,
                          child: TextButton(
                            child: const Text('Editar foto'),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
            Expanded(
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
            ),
          ],
        ),
      ),
    );
  }
}
