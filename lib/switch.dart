import 'package:get/get.dart';

class SwitchApp extends GetxController{

  RxBool notification = false.obs;

  setNotification(bool value){


    notification.value = value;

  }
}