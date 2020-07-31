import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
const url='https://corona.lmao.ninja/v2/all';
const indiaurl='https://corona.lmao.ninja/v2/countries';
class Cases{

  int total,today,recovered,todayrecovered,deaths;
  var worlddata;
  var indiadata;
  Future getdata()async{
    Response response=await get(url);
    worlddata=await jsonDecode(response.body);

  }

  Future getindiadata()async{
    Response indiaresponse=await get(indiaurl);
    indiadata=jsonDecode(indiaresponse.body);

  }


  void getworldcases(int  index,){

    if (index==0){
      today=worlddata['todayCases'];
      total=worlddata['cases'];
      deaths=worlddata['deaths'];
      todayrecovered=worlddata['todayRecovered'];
      recovered=worlddata['recovered'];
    }
    else{
      today=indiadata[93]['todayCases'];
      total=indiadata[93]['cases'];
      deaths=indiadata[93]['deaths'];
      todayrecovered=indiadata[93]['todayRecovered'];
      recovered=indiadata[93]['recovered'];
    }
  }
}