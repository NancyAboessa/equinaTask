import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/profile/view/widgets/setting_tile.dart';
import 'view/widgets/setting_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.2,
        toolbarHeight: 60.h,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        centerTitle: true,
        title: CustomFuturaText(
          textStyle: AppTextStyles.futuraMediumWith20size(),
          title: AppStrings.profile,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppIcons.profile,
                height: 90.w,
                width: 90.w,
              ),
              CustomFuturaText(
                textStyle: AppTextStyles.futuraMediumWith20size(),
                title: AppStrings.equinaUser,
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                  ),
                  borderRadius: BorderRadius.circular(
                    20.r,
                  ),
                ),
                padding: EdgeInsets.only(
                  top: 30.h,
                ),
                child: Column(
                  children: [
                    SettingListTile(),
                    Divider(
                      color: Colors.grey[200],
                      indent: 15,
                      endIndent: 15,
                    ),
                    SettingTile(
                      title: AppStrings.logOut,
                      image: AppIcons.logout,
                      isBgColored: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
