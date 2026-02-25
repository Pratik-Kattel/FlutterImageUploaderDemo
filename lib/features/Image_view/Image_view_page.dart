import 'dart:io';
import 'package:flutter/material.dart';
import 'package:imageuploader/features/Full_screen_view.dart';

class ImagePreview extends StatelessWidget {
  // List of images to display in the grid
  final List<File> imageFile;

  const ImagePreview({super.key, required this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // AppBar title for the image preview page
        title: Text(
          "View your Images",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: LayoutBuilder(
        // LayoutBuilder helps to make a responsive grid
        builder: (context, constraints) {
          int crossAxisCount;
          // Adjust number of columns based on screen width
          if (constraints.maxWidth < 600) {
            crossAxisCount = 3; // Small screen (mobile)
          } else if (constraints.maxWidth < 1024) {
            crossAxisCount = 5; // Medium screen (tablet)
          } else {
            crossAxisCount = 8; // Large screen (desktop)
          }

          // GridView to show images in a responsive grid
          return GridView.builder(
            padding: EdgeInsets.all(10),
            itemCount: imageFile.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount, // Number of columns
              crossAxisSpacing: 7, // Horizontal spacing between images
              mainAxisSpacing: 7, // Vertical spacing between images
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                // Navigate to full screen view when an image is tapped
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => FullScreenView(imageURl: imageFile[index]),
                  ),
                ),
                child: Image.file(
                  imageFile[index],
                  fit: BoxFit.cover, // Make sure image covers the grid cell
                ),
              );
            },
          );
        },
      ),
    );
  }
}
