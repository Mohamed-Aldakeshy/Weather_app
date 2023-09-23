import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_try/models/weather_model.dart';
import 'package:weather_try/pages/search_page.dart';
import 'package:weather_try/providers/weather_provider.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateUi() {
    setState(() {});
  }

  weatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<weatherProvider>(context).weatherData;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return SearchPage(
                    updateUi: updateUi,
                  );
                },
              ));
            },
            icon: Icon(Icons.search),
          ),
        ],
        title: Text('Weather'),
      ),
      body: weatherData == null
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'there is no weather to show',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'start searching now',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            )
          : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(
                    flex: 3,
                  ),
                  Text(
                    Provider.of<weatherProvider>(context).cityName!,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    weatherData!.time,
                    style: TextStyle(fontSize: 22),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network('https:${weatherData!.icon}'),
                      Text(
                        '${weatherData!.temp.toInt()}',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Column(
                        children: [
                          Text('maxTemp :${weatherData!.maxTemp.toInt()}'),
                          Text('minTemp :${weatherData!.minTemp.toInt()}'),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    weatherData!.weatherStateName,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(
                    flex: 6,
                  ),
                ],
              ),
            ),
    );
  }
}
