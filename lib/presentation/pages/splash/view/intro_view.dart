import 'package:fitness_tracker/core/constants/app_colors.dart';
import 'package:fitness_tracker/core/constants/app_constants.dart';
import 'package:fitness_tracker/core/constants/app_images.dart';
import 'package:fitness_tracker/core/constants/app_styles.dart';
import 'package:fitness_tracker/presentation/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          
          image: DecorationImage(image: AssetImage(AppImages.igIntro,

          ),
          
          fit: BoxFit.cover)
        ),
        child: Container(
           height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            kTransparent,
            kBlack,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
        ),
          child: Padding(
            padding:  EdgeInsets.only(left: 12.0.w,right: 12.0.w,bottom: 80.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Track Everything",
                textAlign: TextAlign.center,
                style: kAppTextTheme.headlineLarge?.copyWith(
                  color: kWhite,
                  fontSize: 34.h,
                ),),
                SizedBox(
                  height: kHeight*3,
                ),
                 Text("Manage workouts, monitor progress and achieve your fitness goals.",
                 textAlign: TextAlign.center,
                 style: kAppTextTheme.bodyLarge?.copyWith(
                  color: kWhite,
                  fontSize: 15.h,
                ),),
                SizedBox(
                  height: kHeight*3,
                ),
                AppButton(onClick: (){},title: "Get Started",
                width: double.infinity,
                height: 56.h,
                borderRadius: 26.w,
                titleStyle: kAppTextTheme.bodyLarge?.copyWith(
                  color: kWhite,
                  fontSize: 16.h,
                  fontWeight: FontWeight.w600
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}