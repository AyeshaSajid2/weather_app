import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/application/services/weather_model.dart';
import 'package:weather_app/presentation/pages/location.dart';
// class weather extends StatefulWidget {
//   const weather({super.key});
//
//   @override
//   State<weather> createState() => _weatherState();
// }
//
// class _weatherState extends State<weather> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//
//


class Weather extends StatefulWidget {
 const Weather({super.key});


  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  void initState() {
    super.initState();
    getLocationData();
  }

  getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Locations(locationWeather: weatherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.red,
          size: 100.0,
        ),
      ),
    );
  }
}
