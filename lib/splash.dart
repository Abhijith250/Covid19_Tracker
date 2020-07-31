import 'dart:async';
import 'package:covidtracker/togglefunction.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'home.dart';


class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {
   Cases cas=Cases();
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 10), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home())));
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 40.0,right: 40.0),
              child: Image.asset('images/splash.jpg')
          ),
          SizedBox(height: 10.0,),
          Text("Covid-19 Tracker",style: splashmainstyle,),
          SpinKitDoubleBounce(
            color: Colors.grey,
            size: 60.0,
          ),
          SizedBox(height:240.0),

          Text("developed by",style: splashendstyle,),
          Text("Abhi",style: splashendstyle,),
        ],
      ),
    );
  }
}
//Scaffold(
//backgroundColor: Colors.white,
//body: Column(
//mainAxisAlignment: MainAxisAlignment.center,
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//Container(
//margin: EdgeInsets.all(40.0),
//child: Image.network(image)
//),
////SizedBox(height: 20.0,),
//Text("Covid-19 Tracker",style: splashmainstyle,),
//SizedBox(height:240.0),
//Text("developed by",style: splashendstyle,),
//Text("Abhi",style: splashendstyle,),
//],
//),
//);