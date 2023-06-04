import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DengueData {
  final int year;
  final int cases;

  DengueData(this.year, this.cases);
}

class DengueChart extends StatelessWidget {
  final List<DengueData> dengueData;

  const DengueChart({required this.dengueData, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seriesList = [
      charts.Series<DengueData, int>(
        id: 'Dengue',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (DengueData data, _) => data.year,
        measureFn: (DengueData data, _) => data.cases,
        data: dengueData,
      ),
    ];

    final chart = charts.LineChart(
      seriesList,
      animate: true,
      //chart: animation
      domainAxis: charts.NumericAxisSpec(
          tickProviderSpec:
              const charts.BasicNumericTickProviderSpec(zeroBound: false),
          showAxisLine: true,
          renderSpec: charts.SmallTickRendererSpec(
              labelStyle: const charts.TextStyleSpec(
                  color: charts.MaterialPalette.black),
              lineStyle: charts.LineStyleSpec(
                  color: charts.MaterialPalette.gray.shade900))),
      primaryMeasureAxis: charts.NumericAxisSpec(
          tickProviderSpec:
              const charts.BasicNumericTickProviderSpec(zeroBound: false),
          showAxisLine: true,
          renderSpec: charts.SmallTickRendererSpec(
              labelStyle: const charts.TextStyleSpec(
                  color: charts.MaterialPalette.black),
              lineStyle: charts.LineStyleSpec(
                  color: charts.MaterialPalette.gray.shade900))),
      behaviors: [
        charts.SeriesLegend(
            position: charts.BehaviorPosition.bottom,
            desiredMaxRows: 2,
            desiredMaxColumns: 2,
            outsideJustification: charts.OutsideJustification.middleDrawArea)
      ],
      defaultRenderer: charts.LineRendererConfig(
          includeArea: true, includePoints: true, strokeWidthPx: 2.0),
      customSeriesRenderers: [
        charts.LineRendererConfig(
            customRendererId: 'customArea',
            includeArea: true,
            includePoints: false,
            strokeWidthPx: 2.0,
            areaOpacity: 0.2)
      ],
      layoutConfig: charts.LayoutConfig(
          leftMarginSpec: charts.MarginSpec.fixedPixel(30),
          topMarginSpec: charts.MarginSpec.fixedPixel(20),
          rightMarginSpec: charts.MarginSpec.fixedPixel(20),
          bottomMarginSpec: charts.MarginSpec.fixedPixel(30)),
      animationDuration: const Duration(milliseconds: 500),
    );

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final chartWidget = SizedBox.expand(child: chart);
        final availableHeight = constraints.maxHeight;
        final availableWidth = constraints.maxWidth;

        return SizedBox(
          height: availableHeight,
          width: availableWidth,
          child: chartWidget,
        );
      },
    );
  }
}
