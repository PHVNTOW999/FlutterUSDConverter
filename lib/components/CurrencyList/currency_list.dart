import 'package:flutter/material.dart';
import 'package:usd_converter/components/Currency/currency_model.dart';
import '../../API/example.dart';
import '../Currency/currency.dart';

class CurrencyList extends StatelessWidget {
  const CurrencyList({super.key});

  final List<Map<String, dynamic>> currencyList = currencyListAPI;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: currencyList.length,
      itemBuilder: (context, index) {
        final currency = currencyList[index];
        return Currency();
      },
    );
  }
}