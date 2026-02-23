import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreenView extends StatelessWidget{
  final File imageURl;
  @override
  const FullScreenView({super.key,required this.imageURl});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GestureDetector(
        onTap: ()=>Navigator.pop(context),
        child: Center(
          child: PhotoView(imageProvider:FileImage(imageURl)),
        ),
      )
    );
  }
}