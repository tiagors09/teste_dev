import 'package:flutter/material.dart';

class DropdownSelector extends StatelessWidget {
  final String label;

  const DropdownSelector({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(label),
      ],
    );
  }
}
