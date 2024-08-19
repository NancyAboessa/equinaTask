
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_colors/app_colors.dart';
import 'package:nancyaboessatask/core/utils/app_images/app_images.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/home_page/model/lessons_model.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/custom_cliper.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/custom_text.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/rating_bar.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,required this.lessonData
  });

  final LessonData lessonData;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          child: Container(
            height: 300.w,
            width: 350.w,
            color: Colors.blue,
          ),
          clipper: CustomPath(),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 150.w,
          ),
          child: ClipRRect(
              child: Image.asset(
            AppImages.girlRider,
            height: 200.w,
            width: 200.w,
          )),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 190.w,
          ),
          child: Rating(
            initialRating:0,
            itemSize: 30.w,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10.h,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 190.r),
                child: Column(
                  children: [
                    CustomFuturaText(
                      title: lessonData.name ??"",
                      textStyle: AppTextStyles.futuraDemiWith20sizeWhite(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 30.h,
                      width: 150.w,
                      padding: EdgeInsets.only(
                        top: 5.h,
                        left: 25.w,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          8.r,
                        ),
                      ),
                      child: CustomFuturaText(
                        title:  lessonData.clubName ??"",
                        textStyle: AppTextStyles.futuraMediumWith15sizeBlue(),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  CustomText(
                    title: AppStrings.description,
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                  CustomFuturaText(
                    title:  lessonData.description ??"",
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomFuturaText(
                    title: AppStrings.type,
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                  CustomFuturaText(
                    title:  lessonData.lessonType ??"",
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomFuturaText(
                    title: AppStrings.classDuration,
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                  CustomFuturaText(
                    title:  lessonData.classDuration.toString(),
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomFuturaText(
                    title: AppStrings.numberOfClasses,
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                  CustomFuturaText(
                    title:  lessonData.numOfClasses.toString(),
                    textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 200),
          child: Row(
            children: [
              Container(
                width: 100.w,
                height: 50.w,
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    CustomFuturaText(
                      title: AppStrings.startingFrom,
                      textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                    ),
                    CustomFuturaText(
                      title:  lessonData.startingPrice.toString(),
                      textStyle: AppTextStyles.futuraDemiWith15sizeWhite(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 70.w,
              ),
              Container(
                height: 65.w,
                width: 150.w,
                decoration: BoxDecoration(
                  color: AppColors.purple,
                  borderRadius: BorderRadius.circular(
                    20.r,
                  ),
                ),
                child: Column(
                  children: [
                    CustomFuturaText(
                      title: AppStrings.buyAndGet,
                      textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                    ),
                    CustomFuturaText(
                      title:  lessonData.discount.toString(),
                      textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                    ),
                    CustomFuturaText(
                      title: AppStrings.discount,
                      textStyle: AppTextStyles.futuraLightBookWith15sizeWhite(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
