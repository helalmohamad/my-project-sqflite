// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appforgetpass extends GetxController {
  GlobalKey<FormState> keys = GlobalKey<FormState>();
  late TextEditingController email;
  gotoverfiycode() {}
}

class Appforgetpasss extends Appforgetpass {
  @override
  gotoverfiycode() {
    Get.toNamed("/verfiycode");
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();

    super.onClose();
  }
}
