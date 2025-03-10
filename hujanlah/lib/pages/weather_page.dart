import 'package:flutter/material.dart';
import 'package:hujanlah/services/weather_service.dart';
import 'package:hujanlah/models/weather_model.dart';
import 'package:lottie/lottie.dart'; 


class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  
  //api key
  final _weatherService = WeatherService('4aff4326f6ce541853b26165d82908c2');
  Weather? _weather;

  //fetch weather
_fetchWeather() async {
    //get city
    String cityName = await _weatherService.getCurrentCity();

    //get weather
    try{
      final weather = await _weatherService.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
  catch(e){
    print(e);

  }
}
  //weather animation
  
  //initiate the weather
  @override
  void initState(){
    super.initState();
    _fetchWeather();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_weather?.cityName ?? 'Loading...'),

            //Lottie.asset('assets/sunny.json'),

            Text('${_weather?.temperature.round()}°C')
          ],
          ),
          ),
    );
  }
}
