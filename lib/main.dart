import 'package:fitness_tracker/core/bindings/app_bindings.dart';
import 'package:fitness_tracker/core/constants/app_styles.dart';
import 'package:fitness_tracker/core/utils/route_observer.dart';
import 'package:fitness_tracker/presentation/pages/splash/view/splash_view.dart';
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
      designSize: const Size(360,800),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder:(context, child) {
        return GetMaterialApp(
          title: 'Fitness Tracker',
          navigatorObservers: [customRouteObserver],
          debugShowCheckedModeBanner: false,
          initialBinding: AppBindings(),
          theme: ThemeData(
            useMaterial3: false,
            textTheme: kAppTextTheme,
            tooltipTheme: kAppTooltipTheme,
            appBarTheme: kAppBarTheme,
          ),
          builder: (ctx, child) {
            var mediaQuery = MediaQuery.of(ctx);
            return MediaQuery(
              data: mediaQuery.copyWith(
                textScaler: TextScaler.noScaling,
              ),
              child: child!,
            );
          },
          home: child,
        );
      },
      
      child: SplashView()
    );
  }
}

