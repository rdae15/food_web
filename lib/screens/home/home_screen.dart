import 'package:flutter/material.dart';
import 'package:food_web/screens/home/componentes/app_bar.dart';
import 'package:food_web/screens/home/componentes/bady.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
       body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover
            ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            CustomAppBar(),
            Spacer(),
            Body(),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}