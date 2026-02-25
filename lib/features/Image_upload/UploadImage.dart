import 'dart:io';
import 'dart:math';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imageuploader/Constants/open_default_apps.dart';
import 'package:imageuploader/Custom_Widgets/svg_pictures.dart';
import 'package:imageuploader/Custom_Widgets/image_source_buttomsheet.dart';
import 'package:imageuploader/features/Image_view/Image_view_page.dart';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  UploadImageState createState() => UploadImageState();
}

class UploadImageState extends State<UploadImage> {
  // List to hold selected images
  static List<File>? selectedImage = [];

  @override
  void initState() {
    super.initState();
    // Load previously selected images from Hive storage
    loadImageFromHive();
  }

  // Function to pick images from gallery or camera
  Future<void> uploadImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final List<XFile>? pickedImage = await picker
        .pickMultiImage(); // Pick multiple images

    if (pickedImage != null && pickedImage.isNotEmpty) {
      setState(() {
        // Convert picked XFile objects to File objects
        selectedImage = pickedImage.map((e) => File(e.path)).toList();
      });
    }

    // Save the file paths to Hive for persistent storage
    var box = Hive.box<List>('imagePaths');
    List<String> paths = selectedImage!.map((file) => file.path).toList();
    box.put('imagePaths', paths);
  }

  // Load previously stored image paths from Hive
  void loadImageFromHive() {
    var box = Hive.box<List>('imagePaths');
    List<dynamic>? storedPaths = box.get('imagePaths');
    if (storedPaths != null) {
      setState(() {
        selectedImage = storedPaths.map((path) => File(path)).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 80.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Upload Image Here",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsetsGeometry.all(20.h),
            child: Column(
              children: [
                // Description about the app
                Text(
                  "This is a simple Flutter application built to demonstrate how image uploading works in flutter.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 40.h),
                Text(
                  "Likewise, this project also demonstrate the usage of layout builder in flutter that helps to make different UI for different devices.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 50.h),
                Text(
                  "Contact me for more queries:",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 50.h),
                // Row of social/contact icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SvgPictures.icons(
                      pathname: "Assets/Icons/Facebook.svg",
                      height: 40,
                      width: 40,
                      onTap: OpenDefaultApps.openFacebook,
                    ),
                    SvgPictures.icons(
                      pathname: "Assets/Icons/Instagram.svg",
                      height: 40,
                      width: 40,
                      onTap: OpenDefaultApps.openInstagram,
                    ),
                    SvgPictures.icons(
                      pathname: "Assets/Icons/Github.svg",
                      height: 40,
                      width: 40,
                      onTap: OpenDefaultApps.openGit,
                    ),
                    SvgPictures.icons(
                      pathname: "Assets/Icons/Linkedin.svg",
                      height: 40,
                      width: 40,
                      onTap: OpenDefaultApps.openLinkedin,
                    ),
                    SvgPictures.icons(
                      pathname: "Assets/Icons/Phone.svg",
                      height: 40,
                      width: 40,
                      onTap: OpenDefaultApps.openPhone,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Text(
                  "Press the button below to add your photos",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                SizedBox(height: 100.h),
                // Button to preview selected images
                Align(
                  alignment: Alignment.bottomLeft,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fixedSize: Size(170.w, 35.h),
                    ),
                    onPressed: () {
                      // Show alert if no image is selected
                      if (selectedImage!.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.r),
                              ),
                              title: Text(
                                "No image selected",
                                style: TextStyle(color: Colors.red),
                              ),
                              content: Text(
                                "Please select any image to preview it",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "OK",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                        return;
                      }
                      // Navigate to preview page if images are selected
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ImagePreview(imageFile: selectedImage!),
                        ),
                      );
                    },
                    child: Text(
                      "Preview Images",
                      style: Theme.of(context).textTheme.bodyLarge,
                      selectionColor: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // Floating button to add images
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Show bottom sheet to pick images from gallery or camera
          ImageSourceBottomSheet.showBottomSheet(context, (source) {
            uploadImage(source); // Call upload function
            if (selectedImage != null) {
              ImagePreview(imageFile: selectedImage!);
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
