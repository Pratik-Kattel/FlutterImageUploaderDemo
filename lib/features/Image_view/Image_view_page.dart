import 'dart:io';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget {
  final File imageFile;

  const ImagePreview({super.key, required this.imageFile});

  @override
  ImagePreviewState createState() => ImagePreviewState();
}

class ImagePreviewState extends State<ImagePreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View your Images",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Image.file(widget.imageFile),
      ),
    );
  }
}