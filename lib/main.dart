import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:imageuploader/Constants/app_routes.dart';
import 'package:imageuploader/Splash/screen/splash_screen.dart';
import 'package:imageuploader/Constants/app_themes.dart';

void main() async {
  // Ensure Flutter engine is initialized before using async code
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for local storage
  await Hive.initFlutter();

  // Open a Hive box to store list of image paths
  await Hive.openBox<List>('imagePaths');

  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true, // Automatically scale text for small screens
      splitScreenMode: true, // Support split-screen mode on tablets
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: AppRoutes.routes,
          initialRoute: AppRoutes.splash,
          theme: AppThemes.PinkTheme, // Apply custom pink theme
        );
      },
    );
  }
}
