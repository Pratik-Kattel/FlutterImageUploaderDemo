import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageuploader/features/Image_upload/UploadImage.dart';
import 'package:imageuploader/Constants/Assets_path.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final String path=AssetsPath.animation;
  @override
  Widget build (BuildContext context){
    return AnimatedSplashScreen(splash:
        Column(
          children: [
            Expanded(child:
            Center(
              child: LottieBuilder.asset(path)
            )
            )
          ],
        ),
        splashIconSize: 700,
        duration: 2200

        , nextScreen:UploadImage());
  }

}