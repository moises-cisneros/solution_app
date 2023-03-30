import 'package:charts_flutter/flutter.dart' as charts;

class DengueData {
  final int year;
  final int cases;

  DengueData(this.year, this.cases);
}

class DengueChart {
  final List<DengueData> dengueData;

  //Crea una lista de datos:
  DengueChart(this.dengueData);

  //Crea una serie de datos utilizando la lista creada en el paso anterior:
  charts.LineChart createChart() {
    final seriesList = [
      charts.Series<DengueData, int>(
        id: 'Dengue',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (DengueData data, _) => data.year,
        measureFn: (DengueData data, _) => data.cases,
        data: dengueData,
      ),
    ];

    //Crea el gráfico utilizando la serie de datos:
    return charts.LineChart(
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
                  color: charts.MaterialPalette.gray.shade400))),
      primaryMeasureAxis: charts.NumericAxisSpec(
          tickProviderSpec:
              const charts.BasicNumericTickProviderSpec(zeroBound: false),
          showAxisLine: true,
          renderSpec: charts.SmallTickRendererSpec(
              labelStyle: const charts.TextStyleSpec(
                  color: charts.MaterialPalette.black),
              lineStyle: charts.LineStyleSpec(
                  color: charts.MaterialPalette.gray.shade400))),
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
  }
}