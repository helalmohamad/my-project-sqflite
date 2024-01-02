// ignore: depend_on_referenced_packages
import 'package:ecommerce/core/constace/theme.dart';
import 'package:ecommerce/core/services/myservice.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class Changelang extends GetxController {
  Locale? language;
  late ThemeData theeme;
  Myservice myservice = Get.put(Myservice());
  changelan(String langcode) {
    Locale locallang = Locale(langcode);
    myservice.sharedpref.setString("lang", langcode);
    theeme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.updateLocale(locallang);
    Get.changeTheme(theeme);
  }

  @override
  void onInit() {
    if (myservice.sharedpref.getString("lang") == "ar") {
      language = const Locale("ar");
      theeme = themeArabic;
    } else if (myservice.sharedpref.getString("lang") == "en") {
      language = const Locale("en");
      theeme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      theeme = themeEnglish;
    }
    super.onInit();
  }
}
