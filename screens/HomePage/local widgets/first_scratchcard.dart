import 'package:flutter/material.dart';
import 'dart:math';
import 'package:scratchcard/utils/mediaquery.dart';

class FirstScratchCard extends StatefulWidget {
  @override
  _FirstScratchCardState createState() => _FirstScratchCardState();
}

class _FirstScratchCardState extends State<FirstScratchCard> {
  final color = Color(0xff2A47BC);
  @override

//Container with 'LOOK FOR'

  Widget build(BuildContext context) {
    double iconContainerWidthPadding = displayWidth(context) * 0.11;
    return Stack(
      children: <Widget>[
        Positioned(
          top: displayHeight(context) * 0.18,
          left: iconContainerWidthPadding,
          right: iconContainerWidthPadding,
          child: Container(
            width: displayWidth(context) * 0.05,
            height: displayHeight(context) * 0.06,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(displayWidth(context) * 0.048),
              color: color,
            ),
            alignment: Alignment.center,
            child: Text(
              'LOOK FOR: ${showNumbers.generateNumber(5)}',
              style: TextStyle(color: Colors.white, fontSize: displayWidth(context) * 0.05),
            ),
          ),
        ),

//Circles on the screen

        Positioned(
            top: displayHeight(context) * 0.27, left: iconContainerWidthPadding, child: IconContainer()),
        Positioned(
            top: displayHeight(context) * 0.27, right: iconContainerWidthPadding , child: IconContainer()),
        Positioned(
            top: displayHeight(context) * 0.40, left: iconContainerWidthPadding, child: IconContainer()),
        Positioned(
            top: displayHeight(context) * 0.40, right: iconContainerWidthPadding, child: IconContainer()),
        Positioned(
            top: displayHeight(context) * 0.53, left: iconContainerWidthPadding, child: IconContainer()),
        Positioned(
          top: displayHeight(context) * 0.53,
          right: iconContainerWidthPadding,
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
            shape: BoxShape.circle, border: Border.all(color: color, width: displayWidth(context) * 0.005)),
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
            style: TextStyle(color: color, fontSize: displayWidth(context) * 0.05),
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
