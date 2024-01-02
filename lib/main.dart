import 'package:ecommerce/core/localization/changelang.dart';
import 'package:ecommerce/core/localization/translate.dart';
import 'package:ecommerce/core/services/myservice.dart';
import 'package:ecommerce/routes.dart';
import 'package:ecommerce/view/screen/language.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initial();

  runApp(const MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Changelang changelang = Get.put(Changelang());
    return GetMaterialApp(
        translations: MyTranslation(),
        getPages: routes,
        locale: changelang.language,
        theme: changelang.theeme,
        debugShowCheckedModeBanner: false,
        initialRoute: "/");
  }
}
