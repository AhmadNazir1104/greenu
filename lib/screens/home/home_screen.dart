import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:greenu/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:greenu/utils/app_color.dart';
import 'package:greenu/utils/app_images.dart';
import 'package:greenu/widgets/custom_appbar.dart';
import 'package:greenu/widgets/custom_text.dart';
import 'package:greenu/widgets/primary_button.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentDate;
  String formattedDate =
      DateFormat("EEE, MMM d, ''yyyy").format(DateTime.now());
  @override
  void initState() {
    super.initState();
    currentDate = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
    BotomnavbarScreen(),
      
      
      appBar: CustomAppBar(barimage: AppImaes.appbarimage),
      body: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            CText(
              text: 'Good Morning! 👋',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            CText(text: 'Let’s see your', fontSize: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText(text: 'today’s Tasks', fontSize: 30),
                CText(text: "$formattedDate", fontSize: 14),
              ],
            ),
                          SizedBox(height: 17.h,),

            Container(
              width: 420.w,
              height: 450.h,
              decoration: BoxDecoration(
                  // color: AppColors.red,
                  // borderRadius: BorderRadius.all(Radius.circular(25.r))
                  ),
              child: Stack(
                children: [
                  Image.asset(AppImaes.cardimage),
                  Positioned(
                    top: 225.h,
                    child: Container(
                      width: 420.w,
                      height: 225.h,
                      decoration: BoxDecoration(
                          color: AppColors.primarycardColor,
                          // borderRadius: BorderRadius.circular(25.r)
                          borderRadius:
                              BorderRadius.all(Radius.circular(25.r))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            CText(
                              text: "$formattedDate",
                              fontSize: 14,
                              color: AppColors.appbackgroundColor,
                            ),
                            CText(
                              text: 'Volunteers clean up in Jeddah,',
                              fontSize: 25,
                              maxLines: 2,
                              // overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w700,
                              color: AppColors.appbackgroundColor,
                            ),
                            CText(
                              text: 'S.A. parks',
                              fontSize: 25,
                              maxLines: 2,
                              // overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w700,
                              color: AppColors.appbackgroundColor,
                            ),
                            Row(
                              children: [
                                CText(
                                  text: 'By',
                                  fontSize: 14,
                                  color: AppColors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CText(
                                  text: 'Rama Alguthmi',
                                  fontSize: 16,
                                  color: AppColors.appbackgroundColor,
                                  fontWeight: FontWeight.w700,
                                )
                              ],
                            ),
                          SizedBox(height: 13.h,),
                            PrimaryButton(text: 'Read More', onTap: () {})
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            // $formattedDate
            //  DateTime.now();
          ,SizedBox(height: 5.h,),  
          Container(
            width: 420.w,
            height: 120.h,
              decoration: BoxDecoration(color: AppColors.primaryyellowColor,
              borderRadius: BorderRadius.all(Radius.circular(25.r))
              ),

            )
          ],
        ),
      ),
    );
  }
}
