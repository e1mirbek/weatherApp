import 'dart:developer';

import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,

        title: const Text(
          "Weather App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg-weather.jpeg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10.5,
              left: 10.5,
              bottom: 15.0,
              top: 15.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "You can search for the weather of any",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "city in this app",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextField(
                  onChanged: (value) {
                    log("value >>> $value");
                  },

                  style: TextStyle(color: Colors.white, fontSize: 18),

                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 18),

                    hintText: "Enter City Name",

                    prefixIcon: Icon(
                      Icons.location_city_outlined,
                      color: Colors.white70,
                    ),

                    filled: true,

                    // ignore: deprecated_member_use
                    fillColor: Colors.white.withOpacity(
                      0.1,
                    ), // Полупрозрачный белый цвет
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.white70, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
