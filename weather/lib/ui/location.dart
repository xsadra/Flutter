import 'package:flutter/material.dart';
import 'package:weather/constants/constants.dart';

class LocationUi extends StatefulWidget {
  @override
  _LocationUiState createState() => _LocationUiState();
}

class _LocationUiState extends State<LocationUi> {
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
                    onPressed: () {},
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
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
                    'Location',
                    style: kLocationTextStyle
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '☀️',
                        style: kTempTextStyle,
                      ),
                      Text(
                        '32°',
                        style: kTempTextStyle
                      ),
                    ],
                  ),
                  Text(
                    'Description',
                    style: kConditionTextStyle
                  ),
                ],
              ),
              Center(
                child: Text(
                  'Message text',
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
