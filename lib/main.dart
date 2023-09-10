import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/screen_one.dart';
import 'package:getx_learn/localize_app.dart';

import 'home_page.dart';
import 'language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      fallbackLocale: Locale('en', 'US'),
      locale: Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomeBack(),
      // getPages: [
      //   GetPage(name: '/', page: () => MyHomePage()),
      //   GetPage(name: '/ScreenOne', page: () => ScreenOne()),
      // ],
    );
  }
}
