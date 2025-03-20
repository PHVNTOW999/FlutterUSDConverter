import 'package:flutter/material.dart';
import 'package:usd_converter/components/Currency/currency_model.dart';
import '../Currency/currency.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({
    super.key,
    required this.currencyList,
  });

  final List<CurrencyModel> currencyList;

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
