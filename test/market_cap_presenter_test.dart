@Timeout(Duration(minutes: 5))
import 'package:market_cap_chart/services/alphavantage_stock_api_manager.dart';
import 'package:market_cap_chart/services/market_cap_service.dart';
import 'package:test/test.dart';

void main()
{
  /// Проверка суммы капитализации. Может меняться в будущем.
  test('Overall market capitalization test: 9247986417000 expected.', () async {
      final apiManager = AlphavantageStockAPIManager();
      final marketCapPresenter = MarketCapService(apiManager);

      var marketCapOverall = 0;
      await for (final company in marketCapPresenter.getOverviewStream())
      {
        marketCapOverall += int.parse(company.marketCapitalization);
        // ignore: avoid_print
        print('${company.name} added. Overall: $marketCapOverall');
      }
      expect(marketCapOverall, 9247986417000);
    });
}