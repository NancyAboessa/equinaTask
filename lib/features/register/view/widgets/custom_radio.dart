import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
class CustomRadio extends StatelessWidget {
  const CustomRadio({super.key,required this.text,
  });
final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: CustomFuturaText(title:text ,textStyle: AppTextStyles.futuraLightBookWith15size(),),
      leading: Radio(
        value: text,
        onChanged: (val){},
        groupValue: 'licence',
      ),
    );
  }
}
