
import 'package:flutter/material.dart';
import 'package:market_cap_chart/services/stock_api_manager.dart';

/// Главный экран.
class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.apiManager}) : super(key: key);
  static const routeName = '/';
  final StockApiManager apiManager;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        //TODO: Здесь будет график.
      ),
    );
  }
}