import 'package:flutter/material.dart';

const String kApiKey = '2281d34946a39d83f84215117c5ef424';
const String kCurrentWeatherDataUrl =
    'https://api.openweathermap.org/data/2.5/weather';

const kLocationTextStyle = TextStyle(
  fontSize: 22.0,
  fontFamily: 'WorkSans',
);

const kTempTextStyle = TextStyle(
  fontSize: 70.0,
);

const kConditionTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'WorkSans',
);

const kConditionDetailTextStyle = TextStyle(
  fontSize: 18.0,
  fontFamily: 'WorkSans',
);

const kDescriptionTextStyle = TextStyle(
  fontSize: 22.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);


const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);