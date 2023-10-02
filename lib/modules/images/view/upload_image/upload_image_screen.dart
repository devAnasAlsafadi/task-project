import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class UploadImage extends StatefulWidget  {
  const UploadImage({Key? key}) : super(key: key);

  @override
  State<UploadImage> createState() => _UploadImageState();
}



class _UploadImageState extends State<UploadImage> {
  XFile? _pickedFile;
  final ImagePicker _imagePicker = ImagePicker();
  double? _progressValue = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text('upload image'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(minHeight: 8,value: _progressValue,),
          Expanded(
            child: _pickedFile != null
                ? Image.file(File(_pickedFile!.path))
                : TextButton(onPressed: (){}, child:  const Text('Picked Image')),
          ),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.blue,
                  minimumSize:const  Size(double.infinity, 50) ,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft:Radius.circular(15))
                  )
              ),
              onPressed: (){},
              icon:const  Icon(Icons.upload),
              label: const  Text('Upload Image',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }


}
