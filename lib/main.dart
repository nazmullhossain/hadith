import 'package:al_hadith_app/pages/chapter_pages.dart';
import 'package:al_hadith_app/pages/home_pages.dart';

import 'package:al_hadith_app/widget/bottom_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controller/public_controller.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();



  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    statusBarColor:  Color(0xFF1AA483), // status bar color
  ));
  final Controller publicController = Get.put(Controller());
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomBarWidget(

      ),
    );
  }
}
