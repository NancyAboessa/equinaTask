import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';

class CustomUserCard extends StatelessWidget {
   CustomUserCard({
    super.key,required this.text,
  });
final String text;    late   bool isClicked=true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        isClicked=false;
      },
      child: Container(
        height: 110.w,width: 120.w,
        decoration: BoxDecoration(
            border: Border.all(color:isClicked ? AppColors.blue :AppColors.lightGrey,),
          borderRadius: BorderRadius.circular(10.r,),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
             Padding(
               padding:  EdgeInsets.all(10.r),
               child: CircleAvatar(
                 backgroundColor: AppColors.whiteGray,
                 radius: 10.r,
                 child: Container(
                 height: 15.w,width: 15.w,
                   decoration: BoxDecoration(
                     color: isClicked ? AppColors.blue :AppColors.lightGrey,
                      borderRadius: BorderRadius.circular(15.r,),
                   ),
                 ),
               ),
             ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppIcons.editProfile,color:isClicked ? AppColors.blue :AppColors.lightGrey,
                  height: 30.w,width:30.w ,),
                Padding(
                   padding:  EdgeInsets.only(right:16.r,),
                  child: CustomFuturaText(title:text,
                    textStyle: AppTextStyles.futuraMediumWith15size(),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
