import 'package:flutter/material.dart';
import './local widgets/iconButton.dart';
import './local widgets/listview.dart';
import 'package:scratchcard/widgets/sidebar.dart';
import './local widgets/timer.dart';
import 'package:scratchcard/utils/mediaquery.dart';

class HomePage extends StatelessWidget {
  final color = Color(0xff2A47BC);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: displayWidth(context) * 0.17,
        height: displayHeight(context) * 0.10,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: null,
          child: TimerClass(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButtonClass(
              icon: Icon(Icons.reorder),
              onPressed: () {},
            ),
          ],
        ),
      ),
      drawer: NavDrawer(),
      backgroundColor: color,
      body: Container(
        child: Stack(children: <Widget>[
//Main PageView

          ListViewClass()
        ]),
      ),
    );
  }
}
