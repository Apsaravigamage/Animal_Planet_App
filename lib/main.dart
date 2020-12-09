import 'package:animal_planet_app/screens/landing_screen.dart';
import 'package:animal_planet_app/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingScreen(),
          );
        }
      }
      
      

      
  

