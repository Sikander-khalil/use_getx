import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/screen_one.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Getx Tutorials"),
      ),

      body: Column(

        children: [

          Center(child: TextButton(onPressed: (){
           // Get.to(ScreenOne());
            
            Get.toNamed('/ScreenOne', arguments: [

              'Sikander',

            ]);


          },
          child: Text('Go to next screen'),
          
          ),),

          Card(
            child: ListTile(title: Text("Getx DIalogue Alert"),
            subtitle: Text("Getx dialogue alert "),
            onTap: (){

              Get.defaultDialog(

                title: 'Delete Chat',
                titlePadding: EdgeInsets.only(top: 20),
                contentPadding: EdgeInsets.all(20),
                middleText: 'Are you sure want to close this',
                confirm: TextButton(onPressed: (){
                  Get.back();

                }, child: Text("Okay")),
                cancel: TextButton(onPressed: (){}, child: Text("No")),

              );



            },
            ),
          ),
          Card(
            child: ListTile(title: Text("Getx Bottom Sheet"),
              subtitle: Text("Getx dialogue alert "),
              onTap: (){

                Get.bottomSheet(

                  Container(
                    decoration: BoxDecoration(

                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(

                      children: [

                        ListTile(


                          leading: Icon(Icons.light_mode),
                          title: Text("Light Mode"),
                          onTap: (){

                            Get.changeTheme(ThemeData.light());


                          },
                        ),
                        ListTile(

                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Mode"),
                          onTap: (){

                            Get.changeTheme(ThemeData.dark());


                          },
                        ),

                      ],
                    ),
                  )

                );



              },
            ),
          ),


        ],
      ),
      floatingActionButton: FloatingActionButton(

        onPressed: (){



      },
      child: Icon(Icons.add),
      ),
    );
  }
}
