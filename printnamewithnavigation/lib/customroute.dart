import 'package:flutter/material.dart';
import 'package:printnamewithnavigation/constants.dart';
import 'package:printnamewithnavigation/first.dart';
import 'package:printnamewithnavigation/home.dart';
import 'package:printnamewithnavigation/second.dart';

class CustomRoute {
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case Constants.home:
        return MaterialPageRoute(builder: (_) => const Home());
      case Constants.firstPage:
        return MaterialPageRoute(builder: (_) => const First());
      //case Constants.secondPage:
        //return MaterialPageRoute(builder: (_) => Second());
      default:
        return MaterialPageRoute(builder: (_) => const Text("Invalid Route!"));
    }
  }
}