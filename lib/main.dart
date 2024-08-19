import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/features/profile/profile.dart';
import 'package:nancyaboessatask/features/register/view/auth.dart';
import 'package:nancyaboessatask/core/helper/dio_helper/dio_helper.dart';

import 'features/home_page/view/home_page.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return  const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Nancy Aboessa',
            home: AuthScreen(),
          );
        });
  }
}
