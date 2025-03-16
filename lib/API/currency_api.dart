import 'package:dio/dio.dart';
import 'package:usd_converter/components/Currency/currency_model.dart';

class CurrencyAPI {
  final Dio api;

  final String url = "https://api.freecurrencyapi.com";

  CurrencyAPI() : api = Dio();

  Future<List<CurrencyModel>> getCurrencyList() async {
    try {
      final res = await api.get(url);
      final responseData = res.data['data'];

      responseData.remove('USD');

      if (responseData is! Map<String, dynamic>) {
        return [];
      }

      List<CurrencyModel> currencies = responseData.entries.map((entry) {
        return CurrencyModel.fromJson(entry.key, entry.value);
      }).toList();

      return currencies;
    } catch (e) {
      return [];
    }
  }
}
