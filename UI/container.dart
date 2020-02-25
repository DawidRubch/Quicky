import 'package:flutter/material.dart';
import 'package:scratchcard/BusinessLogic/timer.dart';

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
  final margin =
      EdgeInsets.only(top: 100.0, bottom: 40.0, left: 20.0, right: 20.0);

  final color = Color(0xff2A47BC);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        child: Stack(children: <Widget>[
//Info icon

          Positioned(
              top: 10,
              left: 20,
              right: 20,
              child: IconButton(
                icon: Icon(Icons.info_outline),
                iconSize: 35.0,
                color: color,
                onPressed: () {},
              )),

//Name of the scratchy

          Positioned(
              top: 60,
              left: 25,
              right: 20,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: color),
              )),
          inside,

//Buy button

          Positioned(
              bottom: 20,
              left: 45,
              right: 45,
              child: AnimationBuilderButton(
                price: containerPrice,
              ))
        ]),

//Decoration

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black87,
                  blurRadius: 30.0,
                  offset: Offset(20, 20))
            ]));
  }
}



