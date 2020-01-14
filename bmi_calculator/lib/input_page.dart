import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

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
                    cardBackColor: kActiveCardColor,
                    cardChild: IconContent(label: 'MAIL',icon: FontAwesomeIcons.mars,),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardBackColor: kActiveCardColor,
                    cardChild: IconContent(label: 'FEMAIL',icon: FontAwesomeIcons.venus,),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardBackColor: kActiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardBackColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardBackColor: kActiveCardColor,
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

