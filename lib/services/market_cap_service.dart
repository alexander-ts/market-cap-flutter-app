import 'package:market_cap_chart/models/overview.dart';
import 'package:market_cap_chart/services/stock_api_manager.dart';

class MarketCapService
{  
  MarketCapService(this.stockApiManager);
  
  final StockApiManager stockApiManager;
  final List<String> symbols = ['AAPL', 'AMZN', 'GOOG', 'MSFT', 'FB', 'NFLX'];

  /// Обработка ответа от API
  Future<Overview> _getOverviewBySymbol(String symbol) async {
    final function = stockApiManager.getCompanyOverview;
    // ignore: literal_only_boolean_expressions
    while (true) {
      try {
        return await function(symbol);
      }
      catch (e)
      {
        // ignore: avoid_print
        print('Cannot get an Overview for $symbol. Reason: $e');
        // ignore: avoid_print
        print('Waiting for 15 seconds to try again ...');
        await Future.delayed(const Duration(seconds: 15), () {});
      }
    }
  } 
  
  /// Метод обновляет данные о компаниях.
  Stream<Overview> getOverviewStream() async* {
    for (final symbol in symbols)
    {
        final overview = await _getOverviewBySymbol(symbol);
        yield overview;
    }
  }
}