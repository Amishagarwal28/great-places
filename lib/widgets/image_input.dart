import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class ImageInput extends StatefulWidget {
  

  @override
  _ImageInputState createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File _storedImage;
  Future <void> _takePicture () async{
    final picker=ImagePicker();
    final imageFile=await picker.getImage(source: ImageSource.camera,maxWidth: 600);
  }
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        height: 100,
        width: 140,
        decoration: BoxDecoration(border:Border.all(width:1,color:Colors.grey)),
        child:_storedImage!=null? Image.file(_storedImage,fit: BoxFit.cover,)
        : Text("No Image Found",textAlign: TextAlign.center,) ,
        alignment: Alignment.center,

      ),
      SizedBox(height: 10,),
      Expanded(child: FlatButton.icon(icon: Icon(Icons.camera),
     label: Text("TakePicture"),
     textColor: Theme.of(context).primaryColor,
     onPressed:_takePicture, )),
    ],
      
    );
  }
}