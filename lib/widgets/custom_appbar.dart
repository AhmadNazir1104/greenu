import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:greenu/utils/app_color.dart';
import 'package:greenu/utils/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String barimage;
  CustomAppBar({
    super.key,
    required this.barimage,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.h),
      child: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
                  title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                                  decoration: BoxDecoration(
                                    // color: AppColors.green,
                                    shape: BoxShape.circle,
                                    
                                  ),
                                  child: Image.asset(AppImaes.appbarimage,width: 60.w,height: 60.h,),
                                ),
                                        Container(
                                          width: 60.w,
                                          height: 60.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.grey,
                                    shape: BoxShape.circle,
                                    
                                  ),
                                  child: Icon(Icons.search,size: 27.w,),
                                ),
                    ],
                  ),
      
        elevation: 0,
        actions: [],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(81.h);
}