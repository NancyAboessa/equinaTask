import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';

class CustomIcon extends StatelessWidget {
   CustomIcon({
    super.key,required this.icon,
  });
String  icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.w,width: 30.w,
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: AppColors.lightGrey,
      ),
      child: Image.asset(icon,height: 20.w,width: 20.w,color: AppColors.lightWhite,),
    );
  }
}
