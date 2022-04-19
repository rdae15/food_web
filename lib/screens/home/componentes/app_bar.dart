import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:food_web/componets/defauld_buttom.dart';
import 'package:food_web/screens/home/componentes/menu_item.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          )
        ]

      ),
      child: Row(
        children: <Widget> [
          Image.asset(
            'assets/images/logo.png',
            height: 25,
            alignment: Alignment.topCenter,
          ),
          const SizedBox( width: 5),
          Text(
            'Fodi'.toUpperCase(),
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Spacer(),
            MenuItem(title: 'HOME', press: (){}),
            MenuItem(title: 'ABOUT', press: (){}),
            MenuItem(title: 'PRICING', press: (){}),
            MenuItem(title: 'CONTACT', press: (){}),
            MenuItem(title: 'LOGIN', press: (){}),
            DefaultButtom( text: 'GET STARTED', press: (){}),
        ],
      ),
    );
  }
}

