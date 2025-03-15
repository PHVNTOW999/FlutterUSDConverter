import 'package:dio/dio.dart';

class CurrencyAPI {
  final Dio api;
  final String url = "https://random-data-api.com/api/v2/users";

  CurrencyAPI() : api = Dio();

  Future<dynamic> getRequest() async {
    print('get! test212');
    try {
      final res = await api.get(url);
      print(res.data['id']);
      return res.data;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
