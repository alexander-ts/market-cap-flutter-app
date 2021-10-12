import 'package:flutter/material.dart';
import 'package:market_cap_chart/services/alphavantage_stock_api_manager.dart';
import 'package:market_cap_chart/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiManager =  AlphavantageStockAPIManager();
    return MaterialApp(
      title: 'График капитализации компаний',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        HomePage.routeName : 
          (BuildContext context) => HomePage(apiManager: apiManager)
      },
    );
  }
}