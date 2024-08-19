import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/register/view/widgets/custom_button.dart';
import 'package:nancyaboessatask/features/register/view/widgets/custom_radio.dart';
import 'widgets/custom_text_field.dart';
class RegisterTabScreen extends StatefulWidget {
   const RegisterTabScreen({super.key});
  @override
  State<RegisterTabScreen> createState() => _RegisterTabScreenState();
}
class _RegisterTabScreenState extends State<RegisterTabScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 270.w,
            top: 10.h,
          ),
          child: CustomFuturaText(
            title: AppStrings.name,
            textStyle: AppTextStyles.futuraBookWith15size(),
          ),
        ),
        CustomTextField(
          width: double.infinity,
          emailController: nameController,
          text: AppStrings.name,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 8.w,),
          child: Row(
            children: [
              CustomFuturaText(
                title: AppStrings.phoneNumber,
                textStyle: AppTextStyles.futuraBookWith15size(),
              ),

              SizedBox(width: 90.w,),
              CustomFuturaText(title: AppStrings.phoneNotVerified,
                  textStyle: AppTextStyles.futuraLightBookWith15sizeRed(),),
              SizedBox(width: 5.w,),
              CircleAvatar(
                  backgroundColor: AppColors.red,
                  child: Icon(FontAwesomeIcons.xmark,color: AppColors.white,))
            ],
          ),
        ),
        CustomTextField(
          width: double.infinity,
          emailController: phoneNumberController,
          text: AppStrings.phoneNumber,
        ),

        Padding(
          padding: EdgeInsets.only(
            right: 245.w,
          ),
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
          padding: EdgeInsets.only(right: 200.w,),
          child: CustomFuturaText(
            title: AppStrings.confirmPassword,
            textStyle: AppTextStyles.futuraBookWith15size(),
          ),
        ),
        CustomTextField(
          width: double.infinity,
          emailController: confirmPasswordController,
          text: AppStrings.confirmPassword,
          icon: Icons.remove_red_eye,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomRadio(
              text: AppStrings.iHaveAgreed,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 50.w,bottom: 20.h,),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppStrings.terms,
                      style: AppTextStyles
                          .futuraLightBookWith15sizeBlue(),
                    ),
                    TextSpan(
                      text: AppStrings.and,
                      style:
                      AppTextStyles.futuraLightBookWith15size(),
                    ),
                    TextSpan(
                      text: AppStrings.privacyPolicy,
                      style: AppTextStyles
                          .futuraLightBookWith15sizeBlue().copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        CustomButton(text:AppStrings.register,textcolorstyle:
        AppTextStyles.futuraDemiWith15sizeGray(),color: AppColors.white54,
        ),
      ],
    );
  }
}
