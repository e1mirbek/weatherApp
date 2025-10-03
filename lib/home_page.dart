import 'package:flutter/material.dart';
import 'package:weatherapp/pages/weather_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WeatherPage());
  }
}
