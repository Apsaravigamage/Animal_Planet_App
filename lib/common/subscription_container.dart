import 'package:animal_planet_app/utlls/text_styles.dart';
import 'package:flutter/material.dart';

class SubscriptionContainer extends StatelessWidget {

  final String amount, text, imagePath;

  const SubscriptionContainer({
    Key key, 
    this.amount, 
    this.text, 
    this.imagePath,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image:DecorationImage(image: AssetImage(imagePath),
      ),
     ),
     child: Row(
       children: <Widget> [
         Text(
           text, 
           style: TextStyles.subscriptionTextStyle,
          ),
         Spacer(),
         Text(
           "\$$amount", 
           style: TextStyles.subscriptionAmountTextStyle,
          ),
        
       ],
     ),
    );
   
  }
}