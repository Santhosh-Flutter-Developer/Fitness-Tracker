import 'package:fitness_tracker/core/bindings/app_bindings.dart';
import 'package:fitness_tracker/core/constants/app_styles.dart';
import 'package:fitness_tracker/core/utils/route_observer.dart';
import 'package:fitness_tracker/routes/route_pages.dart';
import 'package:fitness_tracker/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async{
  await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.portraitUp,
  DeviceOrientation.portraitDown,
    ]);
  runApp(const MyApp());
}

final CustomRouteObserver customRouteObserver = CustomRouteObserver();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder:(context, child) {
        return GetMaterialApp(
          title: 'Fitness Tracker',
          navigatorObservers: [customRouteObserver],
          debugShowCheckedModeBanner: false,
          initialBinding: AppBindings(),
          getPages: RoutePages.routes,
          initialRoute:MediaQuery.of(context).size.width>1000?Routes.INTRO: Routes.SPLASH,
          theme: ThemeData(
            useMaterial3: false,
            textTheme: kAppTextTheme,
            tooltipTheme: kAppTooltipTheme,
            appBarTheme: kAppBarTheme,
          ),
          
        );
      },
    );
  }
}

