import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greenu/utils/app_color.dart';

import '../controller/theme_controller.dart';

timePiker(context) async {
  ThemeController themeController = Get.put(ThemeController());
  final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        // Customize the look and feel of the dialog using a custom theme.

        if (themeController.isLightTheme.value) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.light(
                primary: AppColors.appbackgroundColor,
                onPrimary: Colors.white,
                surface: Colors.white,
                onSurface: Colors.black,
                secondary: AppColors.primarybackColor,
                onSecondary: Colors.white,
                surfaceVariant: AppColors.primarybackColor.withOpacity(0.3),
              ),
            ),
            child: child!,
          );
        } else {
          return Theme(
            data: ThemeData.dark(useMaterial3: true).copyWith(
              colorScheme: const ColorScheme.dark(
                primary: AppColors.greyColor,
                onPrimary: Colors.white,
                surface: AppColors.primarybackColor,
                onSurface: Colors.white,
                surfaceTint: AppColors.primarybackColor,
                secondary: AppColors.primarylimeCardColor,
                onSecondary: Colors.white,
                surfaceVariant: Colors.transparent,
              ),
            ),
            child: child!,
          );
        }
      });
  if (newTime != null) {
    // dialogController.updateTime(newTime);
    return newTime;
  }
}