import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myecommerce/pages/home/food/popular_food_detail.dart';
import 'package:myecommerce/pages/home/food/recommended_food_detail.dart';
import 'package:myecommerce/pages/home/main_food_page.dart';
import 'package:myecommerce/helper/dependencies.dart' as dep;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommendedFoodDetail(),
      // home: const PopularFoodDetail(),
      // home: const MyFoodPage(),
    );
  }
}
