import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? weather) {
  if (weather == null) {
    return Colors.blue;
  }
  switch (weather) {
    case 'Sunny':
      return Colors.amber;
    case 'Clear':
      return Colors.yellow;
    case 'Partly cloudy':
      return Colors.lightBlue;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.blueGrey;
    case 'Mist':
      return Colors.blueGrey;
    case 'Patchy rain possible':
      return Colors.blueGrey;
    case 'Patchy snow possible':
      return Colors.blueGrey;
    case 'Patchy sleet possible':
      return Colors.blueGrey;
    case 'Patchy freezing drizzle possible':
      return Colors.blueGrey;
    case 'Thundery outbreaks possible':
      return Colors.blueGrey;
    case 'Blowing snow':
      return Colors.blueGrey;
    case 'Blizzard':
      return Colors.blueGrey;
    case 'Fog':
      return Colors.blueGrey;
    case 'Freezing fog':
      return Colors.blueGrey;
    case 'Patchy light drizzle':
      return Colors.blueGrey;
    case 'Light drizzle':
      return Colors.blueGrey;
    case 'Freezing drizzle':
      return Colors.blueGrey;
    case 'Heavy freezing drizzle':
      return Colors.blueGrey;
    case 'Patchy light rain':
      return Colors.blueGrey;
    case 'Light rain':
      return Colors.blueGrey;
    case 'Moderate rain at times':
      return Colors.blueGrey;
    case 'Moderate rain':
      return Colors.blueGrey;
    case 'Heavy rain at times':
      return Colors.blueGrey;
    case 'Heavy rain':
      return Colors.blueGrey;
    case 'Light freezing rain':
      return Colors.blueGrey;
    case 'Moderate or heavy freezing rain':
      return Colors.blueGrey;
    case 'Light sleet':
      return Colors.blueGrey;
    case 'Moderate or heavy sleet':
      return Colors.blueGrey;
    case 'Patchy light snow':
      return Colors.blueGrey;
    case 'Light snow':
      return Colors.blueGrey;
    case 'Patchy moderate snow':
      return Colors.blueGrey;
    case 'Moderate snow':
      return Colors.blueGrey;
    case 'Patchy heavy snow':
      return Colors.blueGrey;
    case 'Heavy snow':
      return Colors.blueGrey;
    case 'Ice pellets':
      return Colors.blueGrey;
    case 'Light rain shower':
      return Colors.blueGrey;
    case 'Moderate or heavy rain shower':
      return Colors.blueGrey;
    case 'Torrential rain shower':
      return Colors.blueGrey;
    case 'Light sleet showers':
      return Colors.blueGrey;
    case 'Moderate or heavy sleet showers':
      return Colors.blueGrey;
    case 'Light snow showers':
      return Colors.blueGrey;
    case 'Moderate or heavy snow showers':
      return Colors.blueGrey;
    case 'Light showers of ice pellets':
      return Colors.blueGrey;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.blueGrey;
    case 'Patchy light rain with thunder':
      return Colors.blueGrey;
    case 'Moderate or heavy rain with thunder':
      return Colors.blueGrey;
    case 'Patchy light snow with thunder':
      return Colors.blueGrey;
    case 'Moderate or heavy snow with thunder':
      return Colors.blue;
    default:
      return Colors.grey;
  }
} //this code is generated using chat gpt by giving him the list from here https://www.weatherapi.com/docs/weather_conditions.json