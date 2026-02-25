import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:imageuploader/Splash/screen/splash_screen.dart';
import 'package:imageuploader/features/Image_upload/UploadImage.dart';
import 'package:imageuploader/features/Image_view/Image_view_page.dart';

class AppRoutes {
  // Named route for the splash screen
  static const splash = '/';

  // Named route for the home screen (UploadImage screen)
  static const home = '/home';

  // Map of route names to their corresponding widget builders
  static Map<String, WidgetBuilder> routes = {
    // Route for splash screen
    splash: (context) => SplashScreen(),

    // Route for home/upload image screen
    home: (context) => const UploadImage(),
  };
}
