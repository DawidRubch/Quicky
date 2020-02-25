import 'package:flutter/material.dart';
// import 'package:scratchcard/UI/container.dart';

class TimerClass extends StatefulWidget {
  @override
  _TimerClassState createState() => _TimerClassState();
}

class _TimerClassState extends State<TimerClass> with TickerProviderStateMixin {
  final color = Color(0xff2A47BC);
  AnimationController animationController;
  bool startAnimating = false;

//initState
  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: 10), value: 1.0);
    super.initState();
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
      width: 56,
      height: 56,
      child: Center(
          child: AnimatedBuilder(
              builder: (BuildContext context, Widget child) {
                return Text('$timerString',
                    style: TextStyle(fontSize: 20, color: Colors.white));
              },
              animation: animationController)),

//Timer LOOKS
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 2)),
    );
  }

  void startAnimation() {
    startAnimating = true;
  }
}

class AnimationBuilderButton extends StatefulWidget {
  final int price;
  @override
  _AnimationBuilderButtonState createState() => _AnimationBuilderButtonState();
  AnimationBuilderButton({Key key, this.price}) : super(key: key);
}

//Buy button

class _AnimationBuilderButtonState extends State<AnimationBuilderButton>
    with TickerProviderStateMixin {
  bool ifBought = false;

//Button of Buy Button

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
        backgroundColor: Color(0xffA8B8F6),
        label: Text('${widget.price}'),

//What does the Buy Button do

        onPressed: () {});
  }
}

final timerClass = _TimerClassState();
