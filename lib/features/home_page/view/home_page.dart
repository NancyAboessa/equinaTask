import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/custom_card.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/custom_cliper.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/custom_icon.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/list_view_card.dart';
import 'package:nancyaboessatask/features/home_page/view_model/home_cubit.dart';
import 'package:nancyaboessatask/features/home_page/view_model/home_state.dart';
import 'package:nancyaboessatask/features/register/view/widgets/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeCubit()
        ..getLessonListData(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: Image.asset(
                AppIcons.horse,
                width: 10.w,
                height: 10.w,
              ),
              title: CustomFuturaText(
                title: AppStrings.equinaClub,
                textStyle: AppTextStyles.futuraMediumWith20size(),
              ),
              actions: [
                CustomIcon(
                  icon: AppIcons.family,
                ),
                SizedBox(
                  width: 15.w,
                ),
                CustomIcon(
                  icon: AppIcons.notification,
                ),
                SizedBox(
                  width: 15.w,
                ),
                CustomIcon(
                  icon: AppIcons.profileGrey,
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.all(
                16.w,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextField(
                        text: AppStrings.search,
                        icon2: Icons.search_rounded,
                        width: 280.w,
                      ),
                      Container(
                        height: 40.w, width: 40.w,
                        // padding: EdgeInsets.all(5.w,),
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(
                          Icons.format_align_center_outlined,
                          color: AppColors.white54,
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 550.h,
                      width: 350.w,
                      child: const ListViewCard(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
