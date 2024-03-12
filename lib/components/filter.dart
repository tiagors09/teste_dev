import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  const Filter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: (MediaQuery.of(context).size.width * 0.8) - 20,
      padding: const EdgeInsets.all(8.0),
      child: const TextField(
        decoration: InputDecoration(
          label: Text('Apelido'),
        ),
      ),
    );
  }
}
