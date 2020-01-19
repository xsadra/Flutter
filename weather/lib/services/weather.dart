import 'package:weather/constants/constants.dart';
import 'package:weather/services/location.dart';
import 'package:weather/services/networking.dart';

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    double latitude = location.latitude;
    double longitude = location.longitude;

    String url =
        '$kCurrentWeatherDataUrl?lat=$latitude&lon=$longitude&appid=$kApiKey&units=metric';

    NetworkHelper helper = NetworkHelper(url: url);

    return await helper.getData();
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
