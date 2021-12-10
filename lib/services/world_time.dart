import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTTime{
late String location;
late String time;
late String flag;
late String url;

WorldTTime({required this.location,required this.flag,required this.url});
Future<void> gettime() async{
  try {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    //print(datetime);
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
time=DateFormat().add_jm().format(now);

  }
  catch(e){
   time= 'could not get a time data';
  }
}

}