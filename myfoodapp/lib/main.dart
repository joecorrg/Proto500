import 'package:flutter/material.dart';

import 'package:myfoodapp/screens/authentication/auth.dart';

import 'package:myfoodapp/screens/home/home.dart';

import 'package:get/get.dart';

import 'package:myfoodapp/screens/splash/splash.dart';

import 'cons/firebase.dart';

import 'controllers/appController.dart';

import 'controllers/authController.dart';
import 'controllers/productsController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization.then((value) {
    Get.put(AppController());
    Get.put(AuthController());
    Get.put(ProductsController());
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
