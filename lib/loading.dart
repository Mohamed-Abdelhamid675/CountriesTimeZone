import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:untitled2/services/world_time.dart';
class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  _loadingState createState() => _loadingState();
}
class _loadingState extends State<loading> {

  void setupworldtime() async{
    WorldTTime instance= WorldTTime(location: 'Berlin', flag: 'Germany.png', url: 'Europe/Berlin');
    await instance.gettime();
    Navigator.pushReplacementNamed(context, '/home' ,arguments:
    {
      'location':instance.location,
      'flag':instance.flag ,
      'time' :instance.time

    });
  }
  void initState() {
    super.initState();
    setupworldtime();
  }
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(padding: EdgeInsets.all(50),
     child: Text('Loading'),
      )
    );
  }
}
