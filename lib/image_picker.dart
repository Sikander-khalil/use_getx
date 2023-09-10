import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'imagepicker_controller.dart';
import 'package:get/get.dart';
class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(() {

        return Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Center(
              child: CircleAvatar(
                radius: 40,

                backgroundImage: controller.imagePath.isNotEmpty ?
                FileImage(

                    File(controller.imagePath.toString())) :
                    null


              ),
            ),
            TextButton(onPressed: (){

              controller.getImage();



            }, child: Text("Pick Image"))
          ],
        );



      }),




    );
  }
}
