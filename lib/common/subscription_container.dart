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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;



    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        
      ),
    
     child: Stack(
       children: <Widget>[
         Image.asset(imagePath, height: height * 0.6/4, width: width-32, fit: BoxFit.fitWidth,),
         Row(
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
       ],
     ),
    );
   
  }
}