import 'package:flutter/material.dart';
import 'package:market_cap_chart/models/overview.dart';

/// Экран с подробной информацией о компании.
class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  static String routeName = '/description';
  @override
  Widget build(BuildContext context) {
    final overview = ModalRoute.of(context)!.settings.arguments! as Overview;
    //Формирую список.
    final tiles = [
      ListTile(
        title: Text(
          overview.name,
          style: Theme.of(context).textTheme.headline3,
        ),
      )
    ];
    overview.getProperties().forEach((key, value) {
      tiles.add(ListTile(
        title: Text(key),
        subtitle: Text(value),
      ));
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Описание компании'),
      ),
      body: ListView(
        children: tiles,
      ),
    );
  }
}
