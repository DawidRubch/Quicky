import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  final color = Color(0xff2A47BC);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: color,
            ),
            title: Text(
              'Rate us',
              style: TextStyle(color: color),
            ),
            onTap: () => {},
          ),
          ListTile(
            
            leading: Icon(Icons.change_history, color: color),
            title: Text(
              'Change mode',
              style: TextStyle(color: color),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            leading: Icon(Icons.chat_bubble, color: color),
            title: Text(
              'Support',
              style: TextStyle(color: color),
            ),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
