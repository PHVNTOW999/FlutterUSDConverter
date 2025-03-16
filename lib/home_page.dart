import 'package:flutter/material.dart';
import 'components/Currency/currency_model.dart';
import 'components/CurrencyList/view.dart';
import 'API/view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late CurrencyAPI api;
  bool isLoading = true;
  List<CurrencyModel> loadedCurrencyList = [];

  @override
  void initState() {
    super.initState();
    api = CurrencyAPI();
    loadCurrencyList();
  }

  Future<void> loadCurrencyList() async {
    setState(() {
      isLoading = true;
    });
    final data = await api.getCurrencyList();

    setState(() {
      loadedCurrencyList = data;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('USD Converter'),
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : loadedCurrencyList.isEmpty
                ? Center(child: Text('Error, please check Internet 😢'))
                : RefreshIndicator(
                    onRefresh: loadCurrencyList,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1 USD"),
                        SizedBox(height: 10),
                        Expanded(
                            child:
                                CurrencyList(currencyList: loadedCurrencyList)),
                      ],
                    ),
                )
    );
  }
}
