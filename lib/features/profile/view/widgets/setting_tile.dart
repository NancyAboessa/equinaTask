import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';

import '../../../../core/utils/app_colors/app_colors.dart';
import '../../../../core/utils/widgets/custom_text/custom_futura_text.dart';

class SettingTile extends StatelessWidget {
  const SettingTile({super.key,required this.title,
    required this.image,
    this.isBgColored=true});
  final String image;
  final String title;
  final bool isBgColored;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: () {},
      leading: Container(
        height: 25.w,
        width: 25.w,
        padding: EdgeInsets.all(
          6.w,
        ),
        decoration: BoxDecoration(
          color:isBgColored ?  AppColors.purple : AppColors.transparent,
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        child: Image.asset(
          image,
        ),
      ),
      title: CustomFuturaText(
        textStyle: AppTextStyles.futuraMediumWith20size(),
        title: title,
      ),
      trailing: const Icon(Icons.arrow_forward_ios_rounded,),
    );
  }
}
