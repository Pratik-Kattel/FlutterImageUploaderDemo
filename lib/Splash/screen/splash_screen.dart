import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageuploader/features/Image_upload/UploadImage.dart';
import 'package:imageuploader/Constants/Assets_path.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // Path to the Lottie animation asset
  final String path = AssetsPath.animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      // The splash content: a column with the animation centered
      splash: Column(
        children: [
          Expanded(
            child: Center(
              child: LottieBuilder.asset(path), // Load Lottie animation
            ),
          ),
        ],
      ),
      splashIconSize: 700, // Size of the splash animation
      duration: 2200, // Duration of splash screen in milliseconds
      nextScreen: UploadImage(), // Navigate to UploadImage screen after splash
    );
  }
}
