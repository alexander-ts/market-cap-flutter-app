import 'package:flutter/material.dart';
import 'package:market_cap_chart/models/overview.dart';

/// Экран с подробной информацией о компании.
class DescriptionPage extends StatelessWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  static String routeName = '/description';
  @override
  Widget build(BuildContext context) {
    final overview = ModalRoute.of(context)!.settings.arguments as Overview;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Описание компании'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(overview.name),
          ),
          ListTile(
            title: Text(overview.marketCapitalization),
          )
        ],
      ),
    );
  }
}
