import 'package:flutter/material.dart';
import 'package:market_cap_chart/services/alphavantage_stock_api_manager.dart';
import 'package:market_cap_chart/services/market_cap_service.dart';
import 'package:market_cap_chart/views/description_page.dart';
import 'package:market_cap_chart/views/home_page.dart';

void main() {
  final stockApiManager = AlphavantageStockAPIManager();
  final marketCapService = MarketCapService(stockApiManager);
  runApp(MyApp(marketCapService: marketCapService,),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.marketCapService}) : super(key: key);

  final MarketCapService marketCapService;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'График капитализации компаний',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        HomePage.routeName : 
          (BuildContext context) => HomePage(marketCapService: marketCapService),
        DescriptionPage.routeName : 
          (BuildContext context) => const DescriptionPage()
      },
    );
  }
}