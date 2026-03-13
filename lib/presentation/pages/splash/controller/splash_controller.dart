

import 'package:fitness_tracker/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{


  @override
  void onReady() {
    super.onReady();
    _checkAuthStatus();
  }


Future<void> _checkAuthStatus() async{
  Future.delayed(Duration(seconds: 2),(){
    Go.offAll(()=>SizedBox());
  });
}


}