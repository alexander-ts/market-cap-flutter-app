import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:market_cap_chart/models/overview.dart';
import 'package:market_cap_chart/services/stock_api_manager.dart';

/// Класс для работы с API Alphavantage.
class AlphavantageStockAPIManager extends StockApiManager {
  final path = 'https://www.alphavantage.co/';
  final apiKey = 'ключ_к_API'; //Необходимо указать ключ к API.

  @override
  Future<Overview> getCompanyOverview(String companyName) async {
    const functionName = 'OVERVIEW';
    final url = Uri.parse(
        '$path/query?function=$functionName&symbol=$companyName&apikey=$apiKey');

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final jsonBody = json.decode(response.body) as Map<String, dynamic>;
      if (jsonBody.containsKey('Note')) {
        throw Exception(jsonBody['Note']);
      }
      return Overview.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw Exception('Unexpected status code returned.');
    }
  }
}
