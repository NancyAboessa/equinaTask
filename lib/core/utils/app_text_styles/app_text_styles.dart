import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';

class AppTextStyles {
  static TextStyle futuraMediumWith20size() => TextStyle(
        fontFamily: 'medium',
        fontSize: 20.sp,
      );

  static TextStyle futuraDemiWith15size() => TextStyle(
        fontFamily: 'demi',
        fontSize: 15.sp,
      );
  static TextStyle futuraDemiWith20size() => TextStyle(
    fontFamily: 'demi',
    fontSize: 20.sp,
    color: AppColors.white54,
  );
  static TextStyle futuraDemiWith20sizeWhite() => TextStyle(
    fontFamily: 'demi',
    fontSize: 20.sp,
    color: AppColors.white,
  );

  static TextStyle futuraBookWith15size() => TextStyle(
        fontFamily: 'book',
        fontSize: 15.sp,
      );
  static TextStyle futuraLightBookWith15size() => TextStyle(
    fontFamily: 'book',
    fontSize: 15.sp,
   color:  AppColors.lightGrey
  );
  static TextStyle futuraBookWith20size() => TextStyle(
    fontFamily: 'book',
    fontSize: 20.sp,
  );
  static TextStyle futuraLightBookWith15sizeRed() => TextStyle(
      fontFamily: 'book',
      fontSize: 15.sp,
      color:  AppColors.red,
  );

  static TextStyle futuraLightBookWith15sizeBlue() => TextStyle(
      fontFamily: 'book',
      fontSize: 15.sp,
      color:  AppColors.blue
  );
  static TextStyle futuraLightBookWith15sizeWhite() => TextStyle(
      fontFamily: 'book',
      fontSize: 13.sp,
      color:  AppColors.white,
  );

  static TextStyle futuraDemiWith15sizeGray() => TextStyle(
    fontFamily: 'demi',
    color: AppColors.lightBlack,
    fontSize: 15.sp,
  );
  static TextStyle futuraMediumWith15size() => TextStyle(
    fontFamily: 'medium',
    fontSize: 15.sp,
  );
  static TextStyle futuraDemiWith15sizeWhite() => TextStyle(
    fontFamily: 'demi',
    color: AppColors.lightWhite,
    fontSize: 15.sp,
  );
  static TextStyle futuraMediumWith15sizeBlue() => TextStyle(
    fontFamily: 'medium',
    color: AppColors.blue,
    fontSize: 15.sp,
  );

}
