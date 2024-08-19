import 'package:flutter/material.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';

class CustomFuturaText extends StatelessWidget {
   CustomFuturaText({super.key,required this.title, required this.textStyle,

   });
final String title;
final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: textStyle,

    );
  }
}
