import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBack extends StatefulWidget {
  const HomeBack({super.key});

  @override
  State<HomeBack> createState() => _HomeBackState();
}

class _HomeBackState extends State<HomeBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(

        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),

          ),

          SizedBox(height: 10,),

          Row(children: [

            OutlinedButton(onPressed: (){
              
              Get.updateLocale(Locale('en' , 'US'));
              
            }, child: Text('English')),
            SizedBox(height: 10,),
            OutlinedButton(onPressed: (){
              Get.updateLocale(Locale('ur' , 'PK'));

            }, child: Text('Urdu')),
          ],)
        ],
      ),
    );
  }
}
