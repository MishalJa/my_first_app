import 'package:flutter/material.dart';
import 'package:world_time/Pages/loading.dart';
import 'package:world_time/Pages/home.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/loading',
    routes:{
      '/loading':(context)=> Loading(),
      '/home' :(context) => Home(),
    },
  ));
}
