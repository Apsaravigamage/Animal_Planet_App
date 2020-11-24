import 'package:animal_planet_app/common/custom_app_bar.dart';
import 'package:animal_planet_app/utlls/string.dart';
import 'package:animal_planet_app/utlls/text_styles.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

        return Scaffold(
          body: Stack(
            children: <Widget> [
              Image.asset(
              "assets/elephant.jpg", 
              height: height,
              fit: BoxFit.fitHeight,
              ),
              Column(
                children: <Widget> [
                  CustomAppBar(),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 32.0, 
                      left: 32.0, 
                      right: 32.0),
                    child: RichText(
                       text: TextSpan(
                      children: [
                        TextSpan(
                          text: Strings.READY_TO_WATCH ,
                          style: TextStyles.bigHeaderTextStyle,
                    ),
                    TextSpan(text:"\n"),
                    TextSpan(
                      text: Strings.READY_TO_WATCH_DESC, 
                      style: TextStyles.bodyTextStyle,
                    ),
                    TextSpan(text:"\n"),
                    TextSpan(text:"\n"),
                    TextSpan(
                      text: Strings.START_ENJOYING, 
                      style: TextStyles.buttonTextStyle,
                    ),
                ], 
              ),
            ),
                  ),
            ],
          ),
        ],
      ),
    );
  }
}
