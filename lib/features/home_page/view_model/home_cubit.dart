import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nancyaboessatask/core/helper/dio_helper/dio_helper.dart';
import 'package:nancyaboessatask/core/utils/end_points/end_points.dart';
import 'package:nancyaboessatask/features/home_page/model/lessons_model.dart';
import 'package:nancyaboessatask/features/home_page/view_model/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static get(context) => BlocProvider.of<HomeCubit>(context);

  LessonListModel? lessonListModel;

  Future<void> getLessonListData() async {
    // var url = Uri.http('equinaapis.ordarawy.com', 'lessons_list/1');
    // var response = await http.get(url);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
    //
    // // print(await http.read(Uri.https('example.com', 'foobar.txt')));

    emit(GetLessonListDataLoadingState());
    final response = await DioHelper.getData(
      token: null,
      endPointUrl: EndPoints.getAllLessons,
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      lessonListModel = LessonListModel.fromJson(response.data);
      emit(GetLessonListDataSuccessState());
    } else {
      emit(GetLessonListDataErrorState(error: response.statusCode!));
    }
  }
}
