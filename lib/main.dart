import 'package:flutter/material.dart';
import 'package:teste_dev/components/period_form.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => const AlertDialog(
                title: Text(
                  'Novo período',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: PeriodForm()),
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
      ),
    );
  }
}
