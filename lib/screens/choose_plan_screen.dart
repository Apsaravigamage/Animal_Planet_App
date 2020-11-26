import 'package:animal_planet_app/common/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:animal_planet_app/utlls/string.dart';
import 'package:animal_planet_app/utlls/text_styles.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb98959),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              CustomAppBar(),
              Text(String.chooseAPlan, style: TextStyle.headingTextStyle,)
            ],
          ),
        ],
      ),
    );
  }
}