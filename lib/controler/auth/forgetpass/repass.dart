// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appsuccesscodde extends GetxController {
  late TextEditingController repassword;
  GlobalKey<FormState> keysss = GlobalKey<FormState>();
  late TextEditingController password;
  gotosuccesssignup() {}
  gotosuccesssignupp() {}
}

class Appsuccesscode extends Appsuccesscodde {
  @override
  gotosuccesssignup() {
    Get.toNamed("/successsigneup");
  }

  gotosuccesssignupp() {
    Get.toNamed("/successsigneupp");
  }

  @override
  void onInit() {
    repassword = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    password.dispose();
    repassword.dispose();
    super.onClose();
  }
}
