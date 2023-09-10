import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/favouritecontroller.dart';

class FavouriteApp extends StatefulWidget {
  const FavouriteApp({super.key});

  @override
  State<FavouriteApp> createState() => _FavouriteAppState();
}

class _FavouriteAppState extends State<FavouriteApp> {


  FavouriteController favouriteController = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(

          itemCount: favouriteController.fruits.length,
          itemBuilder: (context,index){

        return Card(
          child: ListTile(

            onTap: (){

              if(favouriteController.tempFruits.contains(favouriteController.fruits[index].toString())){

                favouriteController.removeFromfavourite(favouriteController.fruits[index].toString());

              }else{

                favouriteController.addtofavourite(favouriteController.fruits[index].toString());


              }



            },




            title: Text(favouriteController.fruits[index].toString()),
            trailing:
           Obx(() {
            return Icon(Icons.favorite, color: favouriteController.tempFruits.contains(favouriteController.fruits[index].toString()) ? Colors.red : Colors.white,);


           })
          ),
        );


      })
    );
  }
}
