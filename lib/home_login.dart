import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class HomeLogin extends StatefulWidget {
  const HomeLogin({super.key});

  @override
  State<HomeLogin> createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {

  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx((){

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,



            children: [

              TextFormField(
                controller: controller.emailController.value,

                decoration: InputDecoration(
                  hintText: 'Email',

                ),



              ),

          TextFormField(
          controller: controller.passwordController.value,

          decoration: InputDecoration(
          hintText: 'Password',

          ),
          ),
              SizedBox(height: 10,),

              InkWell(

                child: Container(

                  height: 45,
                  color: Colors.green,
                  child: Center(child: Text("login")),
                ),

                onTap: (){

                  controller.login();


                },
              )


            ],
          ),
        );


      }),
    );
  }
}
