import 'package:flutter/material.dart';
import 'package:scratchcard/utils/mediaquery.dart';
class TimerClass extends StatefulWidget {
  @override
  _TimerClassState createState() => _TimerClassState();
}

class _TimerClassState extends State<TimerClass> with TickerProviderStateMixin {
  final color = Color(0xff2A47BC);
  AnimationController animationController;
  

//initState
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 10), value: 1.0);
  }

//Timer String
  String get timerString {
    Duration duration =
        animationController.duration * animationController.value;

    return '${duration.inSeconds}';
  }

//Timer UI

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: AnimatedBuilder(
              builder: (BuildContext context, Widget child) {
                return Text('$timerString',
                    style: TextStyle(fontSize: displayWidth(context) * 0.065, color: color));
              },
              animation: animationController)),

//Timer LOOKS
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(displayWidth(context) * 0.1),
      ),
    );
  }
}


