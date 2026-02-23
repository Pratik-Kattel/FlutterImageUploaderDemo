import 'dart:io';
import 'package:flutter/material.dart';

class ImagePreview extends StatelessWidget {
  final List<File> imageFile;

  const ImagePreview({super.key, required this.imageFile});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View your Images",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: imageFile.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 7,mainAxisSpacing: 7),
        itemBuilder: (context,index){
          return Image.file(
            imageFile[index],
                fit: BoxFit.cover,
          );
        },

        ),
    );
  }

}