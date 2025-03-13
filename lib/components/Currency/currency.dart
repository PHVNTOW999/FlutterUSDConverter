import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  final String name;
  final double value;

  const Currency({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
        ),
        labelText: 'USD',
      ),
      keyboardType: TextInputType.number,
      // controller: _cont,
    );
  }
}