import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant_menu/controller/res_controller.dart';
import 'package:restaurant_menu/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: BindingsBuilder.put(() => ResController()),
      debugShowCheckedModeBanner: false,
      title: 'Restaurant Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
