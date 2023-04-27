import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_gradient_bgcolor_timer_function_getx/view/home.dart';

class SplashController extends GetxController {
  int _myTimer = 0;
  int get myTimer => _myTimer;

  @override
  void onInit() {
    super.onInit();
    timerPlay();
  }

  timerPlay() {
    var _splashScreenTimer;
    _splashScreenTimer =
        new Timer.periodic(new Duration(milliseconds: 1000), (timer) {
      _myTimer++;
      if (_myTimer == 4) {
        _splashScreenTimer.cancel();
        Get.to(WillPopScope(onWillPop: () async => false, child: HomePage()));
      }
    });
  }
}
