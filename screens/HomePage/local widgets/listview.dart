import 'package:flutter/material.dart';
import 'container.dart';
import 'first_scratchcard.dart';


//The entire pageview class

class ListViewClass extends StatefulWidget {
  @override
  _ListViewClassState createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  final PageController controller =
      PageController(viewportFraction: 0.8, initialPage: 0);

//Creation of pageview is here

  @override
  Widget build(BuildContext context) {
    return Container(
        child: PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
//First Scratchcard

        ContainerClass(
            name: 'Numbers', containerPrice: 200, inside: FirstScratchCard()),

//Second Scratchcard

        ContainerClass(
          name: 'Colors',
          containerPrice: 150,
          inside: Text('This way the error doesnt occur'),
        ),

//Third Scratchcard

        ContainerClass(
          name: 'Komputerze',
          containerPrice: 250,
          inside: Text('This way the error doesnt occur'),
        )
      ],
    ));
  }
}
