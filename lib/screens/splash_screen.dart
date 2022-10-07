import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:new_project/screens/info_screen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
              height: 170,
              width: 100,
              child: Image.asset(
                'assets/images/logo_img.jpg',
                fit: BoxFit.cover,
              )),
          const Text(
            'Welcome',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade800,
      nextScreen: const InfoScreen(),
      splashIconSize: 250,
      duration: 3000,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
