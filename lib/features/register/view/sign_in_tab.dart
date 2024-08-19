import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/register/view/widgets/custom_button.dart';
import 'package:nancyaboessatask/features/register/view/widgets/custom_text_field.dart';
import 'package:nancyaboessatask/features/register/view/widgets/custom_user_card.dart';

import '../../../core/utils/app_text_styles/app_text_styles.dart';
class SignInTabScreen extends StatelessWidget {
   SignInTabScreen({super.key});
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomUserCard(text: AppStrings.equestrianUser, ),
              SizedBox(width: 10.w,),
              CustomUserCard(text: AppStrings.trainerUser,),

            ],
          ),
          Padding(
            padding:  EdgeInsets.only(right: 220.w,top: 10.h,),
            child: CustomFuturaText(
              title: AppStrings.phoneNumber,
              textStyle: AppTextStyles.futuraBookWith15size(),
            ),
          ),
          CustomTextField(
            width: double.infinity,
            emailController: phoneNumberController,
            text: AppStrings.phoneNumber,
          ),
          Padding(
            padding:  EdgeInsets.only(right: 240.w,),
            child: CustomFuturaText(
              title: AppStrings.password,
              textStyle: AppTextStyles.futuraBookWith15size(),
            ),
          ),
          CustomTextField(
            width: double.infinity,
            emailController: passwordController,
            text: AppStrings.password,
            icon: Icons.remove_red_eye,
          ),
          Padding(
            padding:  EdgeInsets.only(left: 210.w,),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: AppStrings.orLogin,
                    style: AppTextStyles
                        .futuraLightBookWith15size(),
                  ),
                  TextSpan(
                    text: AppStrings.asAGuest,
                    style:
                    AppTextStyles.futuraLightBookWith15sizeBlue().copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                    ),
                  ),

                ],
              ),
            ),
          ),
         Padding(
           padding:  EdgeInsets.only(left: 210.w,),
           child: Text.rich(
             TextSpan(
             text: AppStrings.forgetPassword,
             style: AppTextStyles
                 .futuraMediumWith15sizeBlue(),
           ),
           ),
         ),
          SizedBox(
            height: 50.h,
          ),
           CustomButton(text: 'Sign In', textcolorstyle: AppTextStyles.futuraDemiWith15sizeWhite(),color: AppColors.blue,),
        ],
      ),
    );
  }
}


