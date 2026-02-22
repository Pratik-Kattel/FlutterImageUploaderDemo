import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imageuploader/Constants/open_default_apps.dart';
import 'package:imageuploader/Custom_Widgets/svg_pictures.dart';
import 'package:imageuploader/Custom_Widgets/image_source_buttomsheet.dart';

class UploadImage extends StatefulWidget{
  const UploadImage({super.key});
  @override
  UploadImageState createState()=>UploadImageState();
}

class UploadImageState extends State<UploadImage>{
  Future<void> uploadImage() async{

  }


  @override
  Widget build (BuildContext context){
    return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 80.h,
        ),
        Align(
       alignment: Alignment.center,
        child:
        Text("Upload Image Here",style: Theme.of(context).textTheme.titleLarge,)
        ),
        SizedBox(
          height:50.h,
        ),
        Padding(padding: EdgeInsetsGeometry.all(20.h),child:
        Column(
              children: [
          Text("This is a simple Flutter application built to demonstrate how image uploading works in flutter.",style: Theme.of(context).textTheme.bodyLarge,),
           SizedBox(
             height: 40.h,
           ),
           Text("Likewise, this project also demonstrate the usage of layout builder in flutter that helps to make different UI for different devices.",style: Theme.of(context).textTheme.bodyLarge,),
                SizedBox(
                  height: 50.h,
                ),
                Text("Contact me for more queries:",style: Theme.of(context).textTheme.titleMedium,),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SvgPictures.icons(pathname: "Assets/Icons/Facebook.svg", height: 40, width: 40, onTap: OpenDefaultApps.openFacebook),
                  SvgPictures.icons(pathname: "Assets/Icons/Instagram.svg", height: 40, width: 40, onTap: OpenDefaultApps.openInstagram),
                  SvgPictures.icons(pathname: "Assets/Icons/Github.svg", height: 40, width: 40, onTap: OpenDefaultApps.openGit),
                  SvgPictures.icons(pathname: "Assets/Icons/Linkedin.svg", height: 40, width: 40, onTap: OpenDefaultApps.openLinkedin),
                  SvgPictures.icons(pathname: "Assets/Icons/Phone.svg", height: 40, width: 40, onTap: OpenDefaultApps.openPhone)
                    ]
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text("Press the button below to add your photos",style: Theme.of(context).textTheme.bodyMedium,),
                SizedBox(
                  height: 160.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                child:
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                      ),
                      fixedSize: Size(170.w, 20.h)
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/PreviewPage');
                    }, child: Text("Preview Images",style: Theme.of(context).textTheme.bodyLarge,selectionColor: Colors.amber,))
                )
              ]
        )
        )
      ],
    ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ImageSourceBottomSheet.showBottomSheet(context, (source){
          final ImagePicker picker=ImagePicker();
        });
      },
      child: Icon(Icons.add),
      ),
    );
  }
}