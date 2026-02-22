import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:imageuploader/Splash/screen/splash_screen.dart';
import 'package:imageuploader/Constants/app_themes.dart';

void main()=>runApp(Myapp());

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          theme: AppThemes.PinkTheme,
        );
      }
    );
  }
}