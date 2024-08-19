import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.emailController,
    this.icon,
    this.icon2,
    this.validateText,
    this.text,
  required  this.width,
  });

  final TextEditingController? emailController;
  final IconData? icon;
  final String ?validateText;
  final String ?text;
  final IconData? icon2;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.w),
      child: Container(
        width: width,
        child: TextFormField(
          controller: emailController,
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return validateText;
            }
            return null;
          },
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.blue,
              ),

              borderRadius: BorderRadius.circular(8.r,),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.blue,
                width: 1.0.w,
              ),
              borderRadius: BorderRadius.circular(8.r,),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.blue,
                  width: 2.0.w,),
              borderRadius: BorderRadius.circular(8.r,),
            ),
            labelText: text,
            labelStyle: AppTextStyles.futuraLightBookWith15size(),
            prefix: Icon(
            icon2, color: AppColors.black,
                        ),
            suffixIcon:  Icon(
              icon,
              color: AppColors.black,
            ),
           contentPadding: EdgeInsets.all(5.w,),
          ),
          onFieldSubmitted: (value) {},
        ),
      ),
    );
  }
}
