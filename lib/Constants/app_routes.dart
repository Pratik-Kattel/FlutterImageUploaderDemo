import 'package:flutter/cupertino.dart';
import 'package:imageuploader/Splash/screen/splash_screen.dart';
import 'package:imageuploader/features/Image_upload/UploadImage.dart';
import 'package:imageuploader/features/Image_view/Image_view_page.dart';

class AppRoutes {
  static const splash='/';
  static const home='/home';
  static const previewPage='/PreviewPage';

  static Map<String,WidgetBuilder> routes={
    splash:(context)=>SplashScreen(),
    home:(context)=>const UploadImage(),
    previewPage:(context)=>const ImagePreview()
  };
}