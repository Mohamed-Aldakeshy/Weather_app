import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_try/models/weather_model.dart';
import 'package:weather_try/pages/home_page.dart';
import 'package:weather_try/providers/weather_provider.dart';

import 'material_color_method.dart';

void main() {
  runApp(weatherApp());
}

// ignore: must_be_immutable
class weatherApp extends StatelessWidget {
  weatherApp({super.key});
  weatherModel? weather;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return weatherProvider();
      },
      child: Builder(
        builder: (context) => MaterialApp(
          theme: ThemeData(
            primarySwatch: getThemeColor(
              Provider.of<weatherProvider>(context)
                  .weatherData
                  ?.weatherStateName,
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      ),
    );
  }
}
