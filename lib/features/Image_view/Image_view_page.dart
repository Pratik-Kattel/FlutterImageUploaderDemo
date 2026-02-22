

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePreview extends StatefulWidget{
  const ImagePreview({super.key});

  @override
  ImagePreviewState createState()=> ImagePreviewState();
}

class ImagePreviewState extends State<ImagePreview>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("View your Images",style: Theme.of(context).textTheme.titleLarge,),
      ),
    );
  }
}