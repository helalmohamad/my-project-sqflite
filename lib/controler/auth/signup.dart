// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appsignup extends GetxController {
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
  GlobalKey<FormState> keys = GlobalKey<FormState>();
}

class Appsignupp extends Appsignup {
  gotosignin() {
    Get.offNamed("/login");
  }

  gotoverfiycode() {
    Get.toNamed("/verfiycodee");
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    phone = TextEditingController();
    username = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.onClose();
  }
}
