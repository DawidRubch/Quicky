import 'package:flutter/material.dart';
import 'UI/listview.dart';
import 'BusinessLogic/timer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> with TickerProviderStateMixin{
  
  final color = Color(0xff2A47BC);
  final int coinsCount = 1500;

 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: color,
      title: "Quickie",
      home: Scaffold(
//Search Icon on the bottom

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.search,
            color: color,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        backgroundColor: color,
        body: Stack(children: <Widget>[
//Timer on the top of the screen

          Container(
            child: TimerClass(),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(25.0),
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
          ),

//Main PageView

          Positioned(child: ListViewClass())
        ]),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
//Two icons on the bottom of the main screen

                IconButtonClass(icon: Icon(Icons.menu), onPressed: () {}),
                IconButtonClass(
                  icon: Icon(
                    Icons.settings,
                    color: color,
                  ),
                  onPressed: () {},
                )
              ]),
        ),
      ),
    );
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
