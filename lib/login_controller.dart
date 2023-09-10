import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController{

  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;


  void login() async{

    try{

      final response = await post(Uri.parse('https://regres.in/api/login'),

          body: {

            'email' : emailController.value.text.toString(),
            'password' : passwordController.value.text.toString(),

          }

      );

      var data = jsonDecode(response.body);
      if(response.statusCode == 200){


        Get.snackbar('Login Sucessful', 'Congratulations');






      }else{

        Get.snackbar('Login Failed', data['error']);



      }


    }catch(error){

      print("Throw Exception : ${error.toString()}");


    }







  }


}