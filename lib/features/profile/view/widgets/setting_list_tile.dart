import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/profile/view/widgets/setting_tile.dart';

class SettingListTile extends StatelessWidget {
  SettingListTile({super.key});

  final List<String> titles = [
    AppStrings.editProfile,
    AppStrings.myPoint,
    AppStrings.myNotification,
    AppStrings.manageFamily,
    AppStrings.fillMedicalReport,
    AppStrings.fillClubApplication,
    AppStrings.billingDetails,
    AppStrings.tutorialGuides,
    AppStrings.information,
    AppStrings.contactUs,
  ];
  final List<String> listIcons = [
    AppIcons.editProfile,
    AppIcons.points,
    AppIcons.notification,
    AppIcons.family,
    AppIcons.medical,
    AppIcons.clipboard,
    AppIcons.bill,
    AppIcons.idea,
    AppIcons.contactUs,
  ];

  @override
  Widget build(BuildContext context) {
    ///this is listView only for view purpose
    ///when i need on tap function they will be individuals

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(
        8.w,
      ),
      itemCount: listIcons.length,
      itemBuilder: (context, index) => SettingTile(
        title: titles[index],
        image: listIcons[index],
      ),
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        height: 5.h,
      ),
    );
  }
}
