// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appsignin extends GetxController {
  late TextEditingController email;
  bool secureval = true;
  late TextEditingController password;
  GlobalKey<FormState> ke = GlobalKey<FormState>();
  gotosignup() {}
}

class Appsigninn extends Appsignin {
  @override
  gotosignup() {
    Get.offNamed("/signup");
  }

  gotoforget() {
    Get.toNamed("/forgetpass");
  }

  changesecure() {
    secureval = secureval == true ? false : true;
    update();
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    super.onClose();
  }
}
