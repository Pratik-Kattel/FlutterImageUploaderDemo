import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceBottomSheet {
  // Function to show a bottom sheet allowing the user to pick an image source
  // 'onPick' is a callback that returns the selected ImageSource (gallery or camera)
  static void showBottomSheet(
    BuildContext context,
    Function(ImageSource) onPick,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              // Option to choose an image from the gallery
              ListTile(
                leading: Icon(Icons.photo_library_outlined),
                title: Text(
                  "Choose from gallery",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  onPick(
                    ImageSource.gallery,
                  ); // Return gallery as the selected source
                },
              ),

              // Option to take a new photo using the camera
              ListTile(
                leading: Icon(Icons.camera_alt_outlined),
                title: Text(
                  "Camera",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onTap: () {
                  Navigator.pop(context); // Close the bottom sheet
                  onPick(
                    ImageSource.camera,
                  ); // Return camera as the selected source
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
