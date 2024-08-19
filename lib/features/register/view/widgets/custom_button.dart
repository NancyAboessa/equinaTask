import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
class CustomButton extends StatelessWidget {
   CustomButton({super.key,required this.text,required this.textcolorstyle,required this.color});
final String text;
final TextStyle textcolorstyle;
 Color color;
  @override
  Widget build(BuildContext context) {
    return  MaterialButton(onPressed: (){},
      color: color,
      padding: EdgeInsets.all(10.w),
      height: 45.h,
      minWidth:double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),),
      child: Text(
        text,
        style: textcolorstyle,
      ),

    );
  }
}
