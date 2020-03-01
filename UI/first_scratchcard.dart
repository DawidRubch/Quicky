import 'package:flutter/material.dart';
import 'dart:math';

class FirstScratchCard extends StatefulWidget {
  @override
  _FirstScratchCardState createState() => _FirstScratchCardState();
}

class _FirstScratchCardState extends State<FirstScratchCard> {
  final color = Color(0xff2A47BC);
  @override

//Container with 'LOOK FOR'

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 110,
          left: 45,
          right: 45,
          child: Container(
            width: 20,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              color: color,
            ),
            alignment: Alignment.center,
            child: Text(
              'LOOK FOR: ${showNumbers.generateNumber(5)}',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),

//Circles on the screen

        Positioned(top: 175, left: 45, child: IconContainer()),
        Positioned(top: 175, right: 45, child: IconContainer()),
        Positioned(top: 275, left: 45, child: IconContainer()),
        Positioned(top: 275, right: 45, child: IconContainer()),
        Positioned(top: 375, left: 45, child: IconContainer()),
        Positioned(
          top: 375,
          right: 45,
          child: IconContainer(),
        ),
      ],
    );
  }
}

//Circles on the screen class

class IconContainer extends StatefulWidget {
  @override
  _IconContainerState createState() => _IconContainerState();
  IconContainer({Key key, this.inside}) : super(key: key);
  final inside;
}

class _IconContainerState extends State<IconContainer> {
  final buttonColors = Colors.white;
  final color = Color(0xff2A47BC);
  var inside;

  @override
  Widget build(BuildContext context) {
    return Container(

//Icon Container UI

        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: color, width: 2)),
        child: FloatingActionButton(
          backgroundColor: buttonColors,

//Logic behind them

          onPressed: () {
            setState(() {
              var rngIndex = Random().nextInt(99);
              inside = showNumbers.generateNumber(rngIndex);
            });
          },

//What is inside the circle

          child: Text(
            '${inside == null ? '' : inside}',
            style: TextStyle(color: color, fontSize: 20.0),
          ),
        ));
  }
}

//Logic behind numbers showing

class ShowNumbers {
  var rngNumbers = List<int>.generate(100, (i) => Random().nextInt(100));
  generateNumber(rngIndex) => '${rngNumbers[rngIndex]}';
}

final showNumbers = ShowNumbers();
