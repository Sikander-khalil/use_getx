import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_learn/counter_controller.dart';
import 'package:get/get.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  final CounterController controller = Get.put(CounterController());


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(

  child: Obx((){

    return Text(controller.counter.toString());

  })
),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          controller.incrementCounter();


        },


      ),
    );
  }
}
