import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getLocation() async{
    Position position = await Geolocator()
        .getLastKnownPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async{
            getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
