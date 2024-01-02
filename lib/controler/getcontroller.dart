// ignore: depend_on_referenced_packages
import 'package:ecommerce/core/services/myservice.dart';
import 'package:ecommerce/data/datasource/statics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appcontroller extends GetxController {
  next() {}
  changetrans() {}
}

class Appcontrolim extends Appcontroller {
  Myservice myservice = Get.find();
  late PageController pagenum;
  int page = 0;
  @override
  next() {
    page++;
    if (page == appstatic.length) {
      myservice.sharedpref.setString("onboard", "yes");
      Get.offAllNamed("/login");
    }
    pagenum.animateToPage(page,
        duration: Duration(seconds: 1), curve: Curves.linear);
    update();
  }

  @override
  void onInit() {
    super.onInit();
    // TODO: implement onInit
    pagenum = PageController();
  }

  @override
  changetrans() {
    update();
  }
}
