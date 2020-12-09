
import 'package:animal_planet_app/common/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:animal_planet_app/utlls/string.dart';
import 'package:animal_planet_app/utlls/text_styles.dart';
import 'package:animal_planet_app/common/subscription_container.dart';

class ChoosePlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffb98959),
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CustomAppBar(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
                child: Text(Strings.chooseAPlan, style: TextStyles.headingTextStyle,),
              ),
              SubscriptionContainer(
                text: Strings.weekSubscription,
                amount: "1.99",
                imagePath: "assets/weekly.jpg" ,
              ),
              SubscriptionContainer(
                text: Strings.oneMonthSubscription,
                amount: "4.9",
                imagePath: "assets/monthly.jpg" ,
              ),
              SubscriptionContainer(
                text: Strings.threeMonthSubscription,
                amount: "9.9",
                imagePath: "assets/3monthly.jpg" ,
              ),
              SubscriptionContainer(
                text: Strings.sixMonthSubscription,
                amount: "13",
                imagePath: "assets/6monthly.jpg" ,
              ),
            ],
          ),
          Positioned(
            bottom: 48,
            
            left: 16,
            child: Text(
                  Strings.LAST_STEP_TO_ENJOY, 
                  style: TextStyles.buttonTextStyle,
                ),

              
             ),
           Positioned(
            bottom: -30,
            right: -30,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ChoosePlanScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  color: Color(0xFFDAD4CC).withOpacity(0.8),
                ),
              child:Align(
               alignment: Alignment(-0.4,-0.4),
               child: Icon(
                Icons.arrow_forward,
                color:Colors.white,
                size:40,
               ),
              ),
              ),
            )
          ),
        ],
      ),
    );
  } 
}