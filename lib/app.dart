
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/add_new_task_screen.dart';
import 'package:task_manager_app/ui/screens/forgot_password_verify_email_screen.dart';
import 'package:task_manager_app/ui/screens/forgot_password_verify_otp_screen.dart';
import 'package:task_manager_app/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager_app/ui/screens/reset_password_screen.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/ui/screens/sign_up_screen.dart';
import 'package:task_manager_app/ui/screens/splash_screen.dart';
import 'package:task_manager_app/ui/screens/update_profile_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        colorSchemeSeed: AppColors.themeColor,

        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
          titleSmall: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 22,
            color: Colors.grey,
          ),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusColor: Colors.purple,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),),
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.symmetric(
                horizontal: 16,vertical: 12),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 16),),
        ),
      ),


      onGenerateRoute: (RouteSettings settings){
        late Widget widget;
        if (settings.name == SplashScreen.name){
          widget = const SplashScreen();
        }else if (settings.name == SignInScreen.name){
          widget = const SignInScreen();
        }else if (settings.name == SignUpScreen.name){
          widget = const SignUpScreen();
        }else if (settings.name == ForgotPasswordVerifyEmailScreen.name){
          widget = const ForgotPasswordVerifyEmailScreen();
        }else if (settings.name == ForgotPasswordVerifyOtpScreen.name){
          widget = const ForgotPasswordVerifyOtpScreen();
        }else if (settings.name == ResetPasswordScreen.name){
          widget = const ResetPasswordScreen();
        }else if (settings.name == MainBottomNavScreen.name){
          widget = const MainBottomNavScreen();
        }else if (settings.name == AddNewTaskScreen.name){
          widget = const AddNewTaskScreen();
        }else if (settings.name == UpdateProfileScreen.name){
          widget = const UpdateProfileScreen();
        }

        return MaterialPageRoute(builder: (_)=>widget);
      },

    );
  }
}
