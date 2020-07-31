import 'package:covidtracker/card.dart';
import 'package:covidtracker/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'togglefunction.dart';
import 'package:http/http.dart';
import 'dart:convert';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {

  Cases worldcases=Cases();
  var worlddata;

  @override
  void initState() {

    super.initState();
    data();
  }





  void data()async{
    await worldcases.getdata();
     worldcases.getindiadata();
     setState(() {
       worldcases.getworldcases(0);
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Column(
        children: <Widget>[
          
             Expanded(
               child: Container(
                height:400.0,
                width: double.infinity,
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [Colors.tealAccent,Colors.teal]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)
                  ),
                    //color: Color.fromRGBO(247,198, 166,100.0),


                ),
                child:Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Stack(
                      children: <Widget>[

                        Padding(

                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('images/coronadr.svg'),
                        ),
                        Positioned(
                          left: 165.0,
                            child:  SafeArea(child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Covid-19 Tracker",style: splashmainstyle,

                                ),
                                SizedBox(height: 30.0,),
                                Text(
                                  "We are in it together\n we will fight with it together",style: splashendstyle.copyWith(
                                  fontSize: 15.0
                                ),

                                ),
                                SizedBox(height: 70.0,),
                                ToggleSwitch(
                                  minWidth: 80.0,
                                  initialLabelIndex: 0,
                                  activeBgColor: Colors.redAccent,
                                  activeFgColor: Colors.white,
                                  inactiveBgColor: Colors.black12,
                                  inactiveFgColor: Colors.grey[900],
                                  labels: ['World', 'India'],
                                  onToggle: (value) {
                                    setState(()  {
                                       worldcases.getworldcases(value);
                                    });

                                  },)





                      ],
                    ),
                            )
                        ),

                  ],
                  ),
                )


          ),
             ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Text("Statistics:",style: splashmainstyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      card(color: Colors.greenAccent, value: worldcases.total, name:'Total Cases' ),
                      card(color: Colors.blueAccent, value: worldcases.recovered, name:'Recovered' ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      card(color: Colors.cyanAccent, value: worldcases.today, name:'Today Cases' ),
                      card(color: Colors.redAccent, value: worldcases.todayrecovered, name:'Today recovered' ),
                      card(color: Colors.purpleAccent, value: worldcases.deaths, name:'Deaths' ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )

    );
  }
}
