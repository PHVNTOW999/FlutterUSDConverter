import 'package:flutter/material.dart';
import 'package:usd_converter/components/Currency/currency_model.dart';
import '../Currency/currency.dart';

class CurrencyList extends StatelessWidget {
  CurrencyList({super.key});

  final List<CurrencyModel> currencyList = [
    CurrencyModel(id: 0, name: 'UAH', value: 12.12),
    CurrencyModel(id: 1, name: 'KRW', value: 21),
    CurrencyModel(id: 2, name: 'CAD', value: 2.12),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currencyList.length,
      itemBuilder: (context, index) {
        return Currency(currencyData: currencyList[index]);
      },
    );
  }
}