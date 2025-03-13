import 'package:flutter/material.dart';

class CurrencyList extends StatelessWidget {
  CurrencyList({super.key});

  final List<String> components = [
    'Button',
    'TextField',
    'Icon',
    'Checkbox',
    'Slider',
    'Switch',
    'Image',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: components.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(components[index]),
          onTap: () {
            // You can handle tapping on each item here
            print('${components[index]} tapped!');
          },
        );
      },
    );
  }
}