import 'package:flutter/material.dart';

const kActiveCardColor = Color(0xFF1D1E33);
const kBottomContainerColor = Color(0xFFEB1555);
const kBottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              backColor: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    backColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    backColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color backColor;

  ReusableCard({@required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: backColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
