import 'package:dio/dio.dart';
import 'package:wheatherapp/models/weather_model.dart';

class WeatherServices {
final Dio dio;
WeatherServices(this.dio);
Future<WeatherModel> getCurrentWeather({required String cityname}) async {
  Response response = await dio.get(
    'https://api.weatherapi.com/v1/forecast.json?key=14fc9a47d1034f0e851130517240608&q=$cityname&days=1'
  );

  WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  return weatherModel;
}

}