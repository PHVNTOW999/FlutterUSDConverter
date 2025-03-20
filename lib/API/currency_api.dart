import 'package:dio/dio.dart';
import 'package:usd_converter/components/Currency/currency_model.dart';

class CurrencyAPI {
  final Dio api;

  // set your personal api from https://api.freecurrencyapi.com/
  final String url =
      "https://api.freecurrencyapi.com/v1/latest?apikey=fca_live_VN8LsPUSkhDsiSB7Q3aW2H6oY7DFlKh909CprnSX";

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
