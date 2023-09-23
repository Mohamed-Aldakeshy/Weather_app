import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_try/models/weather_model.dart';

class weatherService {
  String baseUrl = 'http://api.weatherapi.com/v1';
  String apiKey = '3ec8e591155e410aa3b161330230206';

  Future<weatherModel?> getWeather({required String cityName}) async {
    weatherModel? weather;
    try {
      Uri url =
          Uri.parse('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7');

      http.Response response = await http.get(url);

      Map<String, dynamic> data = jsonDecode(response.body);

      weather = weatherModel.fromJson(data);
    } catch (e) {
      print('e');
    }
    return weather;
  }
}
//http://api.weatherapi.com/v1/forecast.json?key=3ec8e591155e410aa3b161330230206&q=London&days=7 