import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_try/models/weather_model.dart';
import 'package:weather_try/providers/weather_provider.dart';
import 'package:weather_try/services/weather_sevices.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  String? cityName;
  SearchPage({this.updateUi});
  VoidCallback? updateUi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (data) async {
              cityName = data;

              weatherService service = weatherService();

              weatherModel? weather =
                  await service.getWeather(cityName: cityName!);
              Provider.of<weatherProvider>(context, listen: false).weatherData =
                  weather;
              Provider.of<weatherProvider>(context, listen: false).cityName =
                  cityName;
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30, horizontal: 16),
              label: Text('Search'),
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Enter a City',
            ),
          ),
        ),
      ),
    );
  }
}
