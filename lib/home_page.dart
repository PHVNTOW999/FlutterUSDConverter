import 'package:flutter/material.dart';
import 'package:usd_converter/components/CustomTitle/customTitle.dart';
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

    try {
      final data = await api.getCurrencyList();
      setState(() {
        loadedCurrencyList = data;
      });
    } catch (e) {
      print("Error loading data: $e");
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('USD Converter'),
      ),
      body: RefreshIndicator(
          onRefresh: loadCurrencyList,
          child: isLoading
              ? Center(child: CircularProgressIndicator())
              : loadedCurrencyList.isEmpty
                  ? ListView(
                      physics: AlwaysScrollableScrollPhysics(),
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.4),
                        Center(child: Text('Error, please check Internet 😢')),
                      ],
                    )
                  : Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: CurrencyList(
                                  currencyList: loadedCurrencyList)),
                          SizedBox(height: 10),
                          CustomTitle(),
                        ],
                      ),
                    )),
    );
  }
}
