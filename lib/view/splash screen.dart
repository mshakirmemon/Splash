import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../module/Splash Controller.dart';
import 'home.dart';

class Splash extends StatelessWidget {
  SplashController _splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/splash.png")),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.blue.shade700,
                    Color.fromARGB(255, 255, 255, 255),
                    Colors.blue.shade700,
                  ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.40,
              ),
              Text(
                "Splash Screen With Timer Function",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
