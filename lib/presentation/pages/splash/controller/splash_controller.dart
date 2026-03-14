

import 'package:fitness_tracker/presentation/pages/splash/view/intro_view.dart';
import 'package:fitness_tracker/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{


  @override
  void onReady() {
    super.onReady();
    _checkAuthStatus();
  }


Future<void> _checkAuthStatus() async{
  Future.delayed(Duration(seconds: 2),(){
    Go.offAll(()=>IntroView());
  });
}


}