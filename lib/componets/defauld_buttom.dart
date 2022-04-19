import 'package:flutter/material.dart';
import 'package:food_web/constant.dart';

class DefaultButtom extends StatelessWidget {
  final String text;
  final Function() press;
  const DefaultButtom({
    Key? key, 
    required this.text, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.black,
          backgroundColor: kPrimaryColor,
          padding:const EdgeInsets.symmetric(horizontal: 25, vertical: 25 ),
          
        ),
        onPressed: press, 
        child: Text(
          text.toUpperCase()
      )
              ),
    );
  }
}

