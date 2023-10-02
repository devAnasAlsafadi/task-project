
import 'package:flutter/material.dart';
import 'package:task_project/core/app_color.dart';
class ImagesScreen extends StatefulWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Images',style: TextStyle(color: AppColor.whiteColor),),
        centerTitle: true,
      ),
      body: GridView.builder(
        physics: const  BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            clipBehavior: Clip.antiAlias,
            child:const Center(child: Text("Anas")),
          );
        },
        itemCount:10
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/upload_image_screen');
        },
        child:  Icon(Icons.upload,color: AppColor.whiteColor,),
      ),
    );
  }
}
