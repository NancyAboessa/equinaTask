import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nancyaboessatask/core/utils/app_icons/app_icons.dart';
import 'package:nancyaboessatask/core/utils/app_strings/app_strings.dart';
import 'package:nancyaboessatask/core/utils/app_text_styles/app_text_styles.dart';
import 'package:nancyaboessatask/core/utils/widgets/custom_text/custom_futura_text.dart';
import 'package:nancyaboessatask/features/register/view/register_tab.dart';
import 'package:nancyaboessatask/features/register/view/sign_in_tab.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String selectedRadioValue = 'option1';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final bool isSelected = true;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      key: scaffoldKey,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(
            16.w,
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 30.h,
                      right: 80.w,
                      left: 80.w,
                    ),
                    child: Image.asset(AppIcons.logoText),
                  ),
                  CustomFuturaText(
                    title: AppStrings.welcomeToEquina,
                    textStyle: AppTextStyles.futuraMediumWith20size(),
                  ),
                  CustomFuturaText(
                    textStyle: AppTextStyles.futuraLightBookWith15size(),
                    title: AppStrings.equinaClubBookYour,
                  ),
                  CustomFuturaText(
                    textStyle: AppTextStyles.futuraLightBookWith15size(),
                    title: AppStrings.classesAdvanceYourGame,
                  ),
                ],
              ),
              TabBar(
                controller: _tabController,
                labelPadding: EdgeInsets.only(
                  top: 20.h,
                ),
                tabs: [
                  Tab(
                    child: CustomFuturaText(
                      title: AppStrings.signIn,
                      textStyle: AppTextStyles.futuraLightBookWith15size(),
                    ),
                  ),
                  Tab(
                    child: CustomFuturaText(
                      title: AppStrings.register,
                      textStyle: AppTextStyles.futuraLightBookWith15size(),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children:  [
                   Column(
                     children: [
                       SignInTabScreen(),
                     ],
                   ),
                  const  RegisterTabScreen(),
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
