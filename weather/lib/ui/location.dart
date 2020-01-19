import 'package:flutter/material.dart';
import 'package:weather/constants/constants.dart';
import 'package:weather/services/weather.dart';
import 'package:weather/ui/city.dart';

class LocationUi extends StatefulWidget {
  final locationWeather;

  const LocationUi({Key key, @required this.locationWeather}) : super(key: key);

  @override
  _LocationUiState createState() => _LocationUiState();
}

class _LocationUiState extends State<LocationUi> {
  String city;
  int temperature;
  String description;
  String icon;
  int feelsLike;
  int tempMin;
  int tempMax;
  String message;

  WeatherModel weather = WeatherModel();

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(weatherData) {
    print(weatherData);
    print(city);
    if (weatherData == null) {
      city = '# ERROR';
      temperature = 0;
      description = '';
      icon = '01d';
      feelsLike = 0;
      tempMin = 0;
      tempMax = 0;
      message = 'There is some problem with Internet services.';
      return;
    }
    setState(() {
      city = weatherData['name'];
      String temperatureData = weatherData['main']['temp'].toString();
      temperature = double.parse(temperatureData).round();
      description = weatherData['weather'][0]['description'];
      icon = weatherData['weather'][0]['icon'];
      String feelsLikeData = weatherData['main']['feels_like'].toString();
      feelsLike = double.parse(feelsLikeData).round();
      String tempMinData = weatherData['main']['temp_min'].toString();
      tempMin = double.parse(tempMinData).round();
      String tempMaxData = weatherData['main']['temp_max'].toString();
      tempMax = double.parse(tempMaxData).round();
      message = weather.getMessage(temperature);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg1.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.8),
              BlendMode.dstATop,
            ),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () async {
                      var weatherData = await weather.getLocationWeather();
                      updateUI(weatherData);
                    },
                    child: Icon(
                      Icons.my_location,
                      size: 40.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      var cityName = await Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CityUi();
                      }));
                      print(cityName);
                      if (cityName != null) {
                        var weatherData = weather.getCityWeather(city);
                        updateUI(weatherData);
                      }
                    },
                    child: Icon(
                      Icons.search,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 20.0,
                  ),
                  Text(
                    city,
                    style: kLocationTextStyle,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'icons/$icon.png',
                        width: 56.0,
                        height: 56.0,
                      ),
                      Text(
                        '$temperature°',
                        style: kTempTextStyle,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$tempMax°/$tempMin° Feels like $feelsLike°',
                        style: kConditionDetailTextStyle,
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: kConditionTextStyle,
                  ),
                ],
              ),
              Center(
                child: Text(
                  message,
                  style: kDescriptionTextStyle,
                ),
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
