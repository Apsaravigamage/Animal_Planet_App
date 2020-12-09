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
                    "assets/elephant.jpg",
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: <Widget>[
                        Column(
                          children: <Widget>[

                          ]
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical:16,),
                    child:Text(Strings.quickCategories, style: TextStyles.titleTextStyle,)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Column(
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF8C5835),
                            ),
                            child: Image.asset("assets/bear.png", height: 50, width: 50,),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.bear,
                            style: TextStyles.body2TextStyle,

                          )
                        ]
                      ),
                      Column(
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF8C5835),
                            ),
                            child: Image.asset("assets/lion.png", height: 50, width: 50,),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.lion,
                            style: TextStyles.body2TextStyle,

                          )
                        ]
                      ),
                      Column(
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF8C5835),
                            ),
                            child: Image.asset("assets/reptiles.png", height: 50, width: 50,),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.reptiles,
                            style: TextStyles.body2TextStyle,

                          )
                        ]
                      ),
                      Column(
                        children:<Widget>[
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF8C5835),
                            ),
                            child: Image.asset("assets/pets.png", height: 50, width: 50,),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.pets,
                            style: TextStyles.body2TextStyle,

                          )
                        ]
                      )
                    ],
                  ),
                ],
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}