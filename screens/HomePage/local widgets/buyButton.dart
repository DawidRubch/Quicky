import 'package:flutter/material.dart';
import 'package:scratchcard/utils/mediaquery.dart';

class AnimationButton extends StatefulWidget {
  final int price;
  @override
  _AnimationButtonState createState() => _AnimationButtonState();
  AnimationButton({Key key, this.price}) : super(key: key);
}

//Buy button

class _AnimationButtonState extends State<AnimationButton>
    with TickerProviderStateMixin {
  bool ifBought = false;

//Button of Buy Button

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: displayWidth(context) * 0.025),
        width: displayWidth(context) * 0.01,
        height: displayHeight(context) * 0.075,
        child: FloatingActionButton.extended(
            backgroundColor: Color(0xffA8B8F6),
            label: Text(
              '${widget.price}',
              style: TextStyle(fontSize: displayWidth(context) * 0.04),
            ),

//What does the Buy Button do

            onPressed: () {
              setState(() {});
            }));
  }
}
