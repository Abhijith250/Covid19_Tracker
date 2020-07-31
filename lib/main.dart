import 'package:flutter/material.dart';
import 'splash.dart';
void main(){
  runApp(
      MaterialApp(
        title: "Covid-19 Tracker",
        color: Colors.purpleAccent[100],
        debugShowCheckedModeBanner: false,
        home: splash(),
      )
  );
}