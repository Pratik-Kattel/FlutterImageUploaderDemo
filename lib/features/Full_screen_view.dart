import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenView extends StatelessWidget {
  // The image file to display in full screen
  final File imageURl;

  @override
  const FullScreenView({super.key, required this.imageURl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey, // Background color behind the image
      body: GestureDetector(
        // Close full-screen view when user taps anywhere
        onTap: () => Navigator.pop(context),
        child: Center(
          // Display the image using PhotoView for zooming/panning
          child: PhotoView(
            imageProvider: FileImage(imageURl), // Load image from file
          ),
        ),
      ),
    );
  }
}
