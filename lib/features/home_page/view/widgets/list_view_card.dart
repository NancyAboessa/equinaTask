import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/features/home_page/model/lessons_model.dart';
import 'package:nancyaboessatask/features/home_page/view/widgets/custom_card.dart';
import 'package:nancyaboessatask/features/home_page/view_model/home_cubit.dart';
import 'package:nancyaboessatask/features/home_page/view_model/home_state.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return ListView.separated(
          itemBuilder: (context, index) => CustomCard(
            lessonData: cubit.lessonListModel.lessonData ?? LessonData(),
          ),
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 5.h,
          ),
          itemCount: cubit.lessonListModel.lessonData.length,
        );
      },
    );
  }
}
