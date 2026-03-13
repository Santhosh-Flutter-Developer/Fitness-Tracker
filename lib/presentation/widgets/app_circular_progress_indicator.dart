import 'package:fitness_tracker/core/constants/app_colors.dart';
import 'package:flutter/material.dart';


class AppCircularProgressIndicator extends StatelessWidget {
  final Color? color;
  const AppCircularProgressIndicator({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 1.5,
      color: color ?? kPrimaryColor,
    );
  }
}