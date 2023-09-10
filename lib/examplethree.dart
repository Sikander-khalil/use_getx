import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/switch.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {

SwitchApp switchApp = Get.put(SwitchApp());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Getx tutorials"),
      ),
      body: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notification"),
          Obx(() {
           return Switch(value: switchApp.notification.value, onChanged: (value) {
              switchApp.setNotification(value);
            }
            );
          }
              )
            ],
          )
        ],
      ),
    );
  }
}
