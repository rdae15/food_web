import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_web/constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Burguer'.toUpperCase(),
            style: Theme.of(context).textTheme.headline2!.copyWith(
              color: kTextColor,
              fontWeight: FontWeight.bold
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do elusmod tempor\nincididunt ut labor',
              style: TextStyle(
                fontSize: 21,
                color: kTextColor.withOpacity(0.34),
              ),
            ),
            FittedBox(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration( 
                  color: const Color(0xFF372930),
                  borderRadius:  BorderRadius.circular(34)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        shape: BoxShape.circle
                      ),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xFF372930),
                          shape: BoxShape.circle
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      'Get Started'.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox( width: 15),
                  ],
                ),
              ),
            )
          ],
      ),
    );
  }
}