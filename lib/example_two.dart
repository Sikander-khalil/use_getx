import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_learn/twoexample_controler.dart';
import 'package:get/get.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

 ExampleTwoController controller = Get.put(ExampleTwoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [

          Obx(() {
           return Container(

              height: 200,
              width: 200,
              color: Colors.red.withOpacity(controller.opacity.value),
            );

          }),

          Obx(() {

            return Slider(

                value: controller.opacity.value, onChanged: (value){



              controller.setOpacity(value);
              print(value);


            });

          })






        ],
      ),
    );
  }
}
