import 'package:flutter/material.dart';
import 'package:wheatherapp/views/search_view.dart';
import 'package:wheatherapp/widgets/no_weather_body.dart';
import 'package:wheatherapp/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Weather App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return SearchView();
              }));
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: WeatherInfoBody(),
    );
  }
}
