import 'package:flutter/material.dart';

class ValueInput extends StatelessWidget {
  final String label;
  final Widget selector;

  const ValueInput({
    super.key,
    required this.label,
    required this.selector,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label),
        selector,
      ],
    );
  }
}
