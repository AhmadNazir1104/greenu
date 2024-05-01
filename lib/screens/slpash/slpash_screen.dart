import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:greenu/screens/home/home_screen.dart';
import 'package:greenu/utils/app_color.dart';
import 'package:greenu/utils/app_images.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkIntro();
  }

  void checkIntro() {
    Timer(const Duration(seconds: 4), () {
         Get.offAll(() =>  HomeScreen());
      // if(GetStorage().read(ApiConstants.userToken)==null){
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (context) =>const OnBoardingScreen(),
      //     ),
      //   );
      // }else{
      //   Get.offAll(() =>  BotomnavbarScreen());
      // }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appbackgroundColor,
      body: Center(
        child: Image(
          image: const AssetImage(AppImaes.greenulogo),
          height: 85.h,
          width: 85.w,
        ),
      ),
    );
  }
}