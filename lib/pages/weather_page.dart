import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:velocity_x/velocity_x.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  //text style
  var textStyle = GoogleFonts.sacramento(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );
  //api key
  final weatherservice=WeatherService('1e1726c1e29152c4ac2dd652fdfa3c55');
  Weather? _weather;
  //fetch weather
  fetchweather() async{
    //get the current city
    String cityName=await weatherservice.getCurrentCity();

    //get weather for city
    try{

      final weather=await weatherservice.getWeather(cityName);
      setState(() {
        _weather = weather;
      });
    }
    //any errors
    catch(e)
    {
      print(e);
    }
  }





  //weather animation

  //intit state
  @override
  void initState() {

    super.initState();
    //fetch weather on startup
    fetchweather();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //city name
              Text(_weather?.cityName??"loading city...",style:textStyle,).text.xl3.make(),


              //temperature
              Text('${_weather?.temperature.round()}" °C',style:textStyle,).text.xl3.make(),

            ],
          ),
        ),
      ),
    );
  }
}
