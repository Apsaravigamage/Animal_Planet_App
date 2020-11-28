
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
                amount: "4.39",
                imagePath: "assets/monthly.jpg" ,
              ),
              SubscriptionContainer(
                text: Strings.threeMonthSubscription,
                amount: "9.99",
                imagePath: "assets/3monthly.jpg" ,
              ),
              SubscriptionContainer(
                text: Strings.sixMonthSubscription,
                amount: "13",
                imagePath: "assets/6monthly.jpg" ,
              ),
            ],
          ),
        ],
      ),
    );
  } 
}