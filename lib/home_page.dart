import 'package:flutter/material.dart';
import 'components/CurrencyList/view.dart';
import 'API/view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CurrencyAPI api;

  @override
  void initState() {
    super.initState();
    api = CurrencyAPI();
    api.getRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('USD Converter'),
      ),
      body: CurrencyList(),
    );
  }
}