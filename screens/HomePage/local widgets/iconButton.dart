import 'package:flutter/material.dart';
import 'package:scratchcard/utils/mediaquery.dart';

class IconButtonClass extends StatelessWidget {
  final onPressed;
  final icon;

  final color = Color(0xff2A47BC);
  IconButtonClass({Key key, this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    final iconSize = displayWidth(context) * 0.08;
    final padding = EdgeInsets.only(
        left: displayWidth(context) * 0.02,
        right: displayWidth(context) * 0.02);
    return IconButton(
      padding: padding,
      iconSize: iconSize,
      color: color,
      onPressed: onPressed,
      icon: icon,
    );
  }
}
