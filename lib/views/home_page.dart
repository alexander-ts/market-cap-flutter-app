
import 'package:flutter/material.dart';
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
  List<Overview> overviews = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: StreamBuilder(
        stream: widget.marketCapService.getOverviewStream(),
        builder: (context, snapshot) {
          var caption = '';
          if (snapshot.hasData)
          {
            caption = (snapshot.data as Overview).name;
            overviews.add(snapshot.data as Overview);
          }

          if (snapshot.connectionState == ConnectionState.done)
          {
            List<Widget> tiles = [];
            for (final overview in overviews)
              //TODO: Добавить навигацию к описанию компании.
              tiles.add(ListTile(title: Text(overview.name),));
            return ListView(children: tiles);
          }
          else
          {
            return Column(mainAxisAlignment: MainAxisAlignment.center, children: [CircularProgressIndicator(), Text(caption)]);
          }
        }),),
    );
  }
}