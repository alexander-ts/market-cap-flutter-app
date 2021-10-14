import 'package:flutter/material.dart';
import 'package:market_cap_chart/models/overview.dart';
import 'package:market_cap_chart/views/description_page.dart';
import 'package:money2/money2.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverviewChartData {
  OverviewChartData(this.x, this.y);

  final String x;
  final int y;
}

class OverviewChart extends StatelessWidget {
  const OverviewChart({Key? key, required this.overviews}) : super(key: key);

  final List<Overview> overviews;

  List<OverviewChartData> _createChartDataList() {
    var data = <OverviewChartData>[];
    for (final o in overviews) {
      data.add(
        OverviewChartData(
          o.name,
          int.parse(o.marketCapitalization),
        ),
      );
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      title: ChartTitle(text: 'Рыночная капитализация'),
      legend: Legend(
          isVisible: true,
          position: LegendPosition.top,
          overflowMode: LegendItemOverflowMode.wrap,
          title: LegendTitle(text: 'Компании'),
          alignment: ChartAlignment.center),
      series: <CircularSeries>[
        DoughnutSeries<OverviewChartData, String>(
          onPointTap: (chartPointDetails) {
            //chartPointDetails.pointIndex - порядковый номер.
            Navigator.of(context).pushNamed(
              DescriptionPage.routeName,
              arguments: overviews[chartPointDetails.pointIndex!],
            );
          },
          enableTooltip: true,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
          ),
          dataSource: _createChartDataList(),
          xValueMapper: (OverviewChartData data, _) => data.x,
          yValueMapper: (OverviewChartData data, _) => data.y,
          dataLabelMapper: (OverviewChartData data, _) =>
              Money.fromInt(
            data.y,
            Currency.create('USD', 0),
          ).toString(),
        )
      ],
    );
  }
}
