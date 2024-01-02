// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appsigninn extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> kee = GlobalKey<FormState>();
  bool secureval = true;
  gotosignup() {}
}

class Appsigninnnn extends Appsigninn {
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
