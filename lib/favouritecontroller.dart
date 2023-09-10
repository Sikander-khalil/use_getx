import 'package:get/get.dart';

class FavouriteController extends GetxController{


  RxList<String> fruits = ['Orange', 'Apple', 'Mangoes','Banahas'].obs;

  RxList tempFruits = [].obs;

  addtofavourite(String value){

    tempFruits.add(value);


  }

  removeFromfavourite(String value){

    tempFruits.remove(value);


  }


}