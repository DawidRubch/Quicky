import 'package:flutter/material.dart';
import 'UI/listview.dart';
import 'BusinessLogic/timer.dart';
import 'UI/sidebar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin {
  final color = Color(0xff2A47BC);
  final int coinsCount = 1500;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: color,
        title: "Quickie",
        home: Scaffold(
          drawer: NavDrawer(),
//Search Icon on the bottom

          backgroundColor: color,
          body: Container(
            child: Stack(children: <Widget>[
              Positioned(
                width: 40,
                left: 20,
                top: 35,
                child: FloatingActionButton(
                  child: Icon(
                    Icons.reorder,
                    color: color,
                  ),
                  backgroundColor: Colors.white,
                  onPressed: () {},
                ),
              ),
//Timer on the top of the screen

              Container(
                child: TimerClass(),
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 60),
              ),

//Top right coins count

              Positioned(
                right: 40,
                top: 30,
                child: Text('${coinsCount}C',
                    style: TextStyle(color: Colors.white, fontSize: 15.0)),
              ),

//Buy more button

              Positioned(
                  width: 100,
                  height: 30.0,
                  right: 12,
                  top: 50.0,
                  child: Center(
                    child: FloatingActionButton.extended(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      label: Text(
                        'BUY MORE',
                        style: TextStyle(color: color, fontSize: 13.0),
                      ),
                      onPressed: () {},
                      backgroundColor: Colors.white,
                    ),
                  )),

//Main PageView

              Positioned(child: ListViewClass())
            ]),
          ),
        ));
  }
}

//Bottom Main Screen icons

class IconButtonClass extends StatelessWidget {
  final onPressed;
  final icon;
  final iconSize = 30.0;
  final color = Color(0xff2A47BC);
  IconButtonClass({Key key, this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize,
      color: color,
      onPressed: onPressed,
      icon: icon,
    );
  }
}
