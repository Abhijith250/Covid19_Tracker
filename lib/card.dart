import 'package:covidtracker/constants.dart';
import 'package:flutter/material.dart';

class card extends StatefulWidget {
  card({@required this.color,@required this.value,@required this.name});
  Color color;
  int value;
  String name;
  @override
  _cardState createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:Card(
      color: widget.color,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(widget.name,style: splashendstyle.copyWith(fontSize: 15.0)),
        Divider(
        color: Colors.black,
          thickness: 0.5,
    ),
          Text(widget.value.toString(),style: splashendstyle.copyWith(fontSize: 15.0),)
        ],
      ),
    ));
  }
}
