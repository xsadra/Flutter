import 'package:flutter/material.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/services/location.dart';
import 'package:weather/services/networking.dart';
import 'package:weather/ui/location.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  double latitude;
  double longitude;

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    String url =
        '$kCurrentWeatherDataUrl?lat=$latitude&lon=$longitude&appid=$kApiKey&units=metric';

    NetworkHelper helper = NetworkHelper(url: url);

    var weatherData = await helper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationUi();
    }));

//    double temperature = weatherData['main']['temp'];
//    int temperatureId = weatherData['weather'][0]['id'];
//    String city = weatherData['name'];
  }

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
