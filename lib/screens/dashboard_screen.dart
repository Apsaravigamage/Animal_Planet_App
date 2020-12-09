import 'package:animal_planet_app/common/custom_app_bar.dart';
import 'package:animal_planet_app/utlls/string.dart';
import 'package:animal_planet_app/utlls/text_styles.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB98959),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget> [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.40,
            child: Container(
              child: Stack(
                children: <Widget> [
                  Image.asset(
                    "assers/elephant.jpg",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fitWidth,
                  ),
                  
                  Column(
                    children:<Widget>[
                      CustomAppBar(
                        opacity: 1,
                      ),
                        Expanded(
                           child: Align(
                            alignment: Alignment(0, -0.6),
                            child: Text(
                              Strings.welcomeToAPlanet,
                              style: TextStyles.bigHeaderTextStyle,
                              textAlign: TextAlign.center,
                          ),
                           ))
                        ]
                      ),
                    ],
                  ),
                
              ),
            ),
          
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.65,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top:Radius.circular(40),
                ),
                color: Color(0xFFB98959),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical:16,),
                    child:Text(Strings.relatedToYou, style: TextStyles.buttonTextStyle,)
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          
                        ]
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}