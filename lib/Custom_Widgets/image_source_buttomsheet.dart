import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceBottomSheet {
  static void showBottomSheet(BuildContext context,Function(ImageSource) onPick){
    showModalBottomSheet(context: context, builder: (context){
      return SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.photo_library_outlined),
              title: Text("Choose from gallery",style: Theme.of(context).textTheme.bodyMedium, ),
              onTap: (){
                Navigator.pop(context);
                onPick(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt_outlined),
              title: Text("Camera",style: Theme.of(context).textTheme.bodyMedium,),
              onTap: (){
                Navigator.pop(context);
                onPick(ImageSource.camera);
              },
            )
          ],
        ),

      );
    });

}
}