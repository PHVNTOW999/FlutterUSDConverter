import 'package:flutter/material.dart';
import 'currency_model.dart';

class Currency extends StatelessWidget {
  const Currency({
    super.key,
    required this.currencyData
  });

  final CurrencyModel currencyData;

  @override
  Widget build(BuildContext context) {
    // print(currencyData);
    return ListTile(
      title: Text(currencyData.name),
      subtitle: Text('${currencyData.value}'),
    );
  }


}