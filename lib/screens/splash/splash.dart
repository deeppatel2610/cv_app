import 'dart:async';

import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/global.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      Navigator.of(context).pushReplacementNamed('/splash2');
    },);
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: bgColor,
                image: DecorationImage(
                  image: AssetImage(logo),
                ),
              ),
            ),
          ),
          Text(
            'Resume Builder',
            style: TextStyle(
              color: secondary,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
