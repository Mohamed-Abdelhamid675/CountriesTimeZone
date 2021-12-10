import 'package:flutter/material.dart';
import 'package:untitled2/loading.dart';
import 'package:untitled2/home.dart';
import 'package:untitled2/location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) =>loading(),
      '/home' :(context) =>home(),
      '/location': (context)=>location()

    },
  ));
}
