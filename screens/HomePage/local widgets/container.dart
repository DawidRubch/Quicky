import 'package:flutter/material.dart';
import 'buyButton.dart';
import 'package:scratchcard/utils/mediaquery.dart';

//Containers from pageview are created here

class ContainerClass extends StatelessWidget {
//Name on top of the container

  final String name;

//Price of a scratchy

  final int containerPrice;

//Inside the container

  final Widget inside;

  ContainerClass({Key key, this.name, this.containerPrice, this.inside})
      : super(key: key);

  final color = Color(0xff2A47BC);

  @override
  Widget build(BuildContext context) {

//Margin

    final margin = EdgeInsets.only(
        left: displayWidth(context) * 0.05,
        right: displayWidth(context) * 0.05,
        bottom: displayHeight(context) * 0.08,
        top: displayHeight(context) * 0.08);
    return Container(
        margin: margin,
        child: Stack(children: <Widget>[

//Information icon

          Positioned(
              top: displayHeight(context) * 0.01,
              left: displayWidth(context) * 0.05,
              right: displayWidth(context) * 0.05,
              child: IconButton(
                icon: Icon(Icons.info_outline),
                iconSize: displayWidth(context) * 0.095,
                color: color,
                onPressed: () {},
              )),

//Name of the card

          Positioned(
            top: displayHeight(context) * 0.1,
            left: displayWidth(context) * 0.06,
            right: displayWidth(context) * 0.06,
            child: Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: displayWidth(context) * 0.07, color: color),
            ),
          ),
          inside,

//Buy button

          Positioned(
              bottom: displayHeight(context) * 0.02,
              left: displayWidth(context) * 0.08,
              right: displayWidth(context) * 0.08,
              child: AnimationButton(
                price: containerPrice,
              ))
        ]),

//Decoration

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(displayWidth(context) * 0.06),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black87,
                  blurRadius: 30.0,
                  offset: Offset(displayWidth(context) * 0.05,
                      displayHeight(context) * 0.015))
            ]));
  }
}
