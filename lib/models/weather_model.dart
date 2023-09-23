class weatherModel {
  String date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherStateName;
  String time;
  String icon;

  weatherModel(
      {required this.date,
      required this.temp,
      required this.time,
      required this.maxTemp,
      required this.minTemp,
      required this.weatherStateName,
      required this.icon});

  factory weatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return weatherModel(
      date: data['forecast']['forecastday'][0]['date'],
      time: data['forecast']['forecastday'][0]['hour'][0]['time'],
      temp: jsonData['avgtemp_c'],
      maxTemp: jsonData['maxtemp_c'],
      minTemp: jsonData['mintemp_c'],
      weatherStateName: jsonData['condition']['text'],
      icon: jsonData['condition']['icon'],
    );
  }
}
