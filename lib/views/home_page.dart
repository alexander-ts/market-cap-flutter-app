import 'package:flutter/material.dart';
import 'package:market_cap_chart/components/chart.dart';
import 'package:market_cap_chart/models/overview.dart';
import 'package:market_cap_chart/services/market_cap_service.dart';

/// Главный экран.
class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.marketCapService}) : super(key: key);
  static const routeName = '/';
  final MarketCapService marketCapService;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_final_locals
    var overviews = <Overview>[];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Статистика по компаниям'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: widget.marketCapService.getOverviewStream(),
          builder: (context, snapshot) {
            var caption = '';
            if (snapshot.hasData) {
              caption = (snapshot.data! as Overview).name;
              overviews.add(snapshot.data! as Overview);
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return SafeArea(child: OverviewChart(overviews: overviews));
            } else {
              return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Text(caption),
                  ]);
            }
          },
        ),
      ),
    );
  }
}