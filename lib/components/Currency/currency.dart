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
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        border: Border.all(color: Colors.blueGrey, width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: ListTile(
            leading: Text('${currencyData.name}:', style: TextStyle(fontSize: 20, color: Colors.white)),
            trailing: Text('${currencyData.value}', style: TextStyle(fontSize: 20, color: Colors.white)))
      )
    );
  }
}