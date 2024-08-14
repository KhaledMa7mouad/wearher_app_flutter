import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wheatherapp/models/weather_model.dart';

class WeatherServices {
final Dio dio;
final String baseUrl ='https://api.weatherapi.com/v1';
final String apiKey = '14fc9a47d1034f0e851130517240608';
WeatherServices(this.dio);
Future<WeatherModel> getCurrentWeather({required String cityname}) async {


  try {
    Response response = await dio.get(
      '$baseUrl/v1/forecast.json?key=$apiKey&q=$cityname&days=1'
    );
    
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  } on DioException catch (e) {
    final String errorMessege = e.response?.data['error']['message'] ?? 'ooPs there is an error , try again letter' ;
    throw Exception(errorMessege);
  }
  catch (e){
    log(e.toString());
    throw Exception('ooPs there is an error , try again letter');
  }

}

}