import 'package:fitness_tracker/presentation/pages/splash/view/intro_view.dart';
import 'package:fitness_tracker/presentation/pages/splash/view/splash_view.dart';
import 'package:fitness_tracker/routes/routes.dart';
import 'package:get/get.dart';

class RoutePages {

  static final routes =[
     GetPage(
      title: "Splash",
      name: Routes.SPLASH, page: ()=>SplashView()),
    GetPage(
      title: "Intro",
      name: Routes.INTRO, page: ()=>IntroView())
  ];
}