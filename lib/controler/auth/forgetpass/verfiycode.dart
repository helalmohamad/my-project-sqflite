// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Appverfiycose extends GetxController {
  late TextEditingController email;
  gotorepass() {}
  gotosuccesssigneup() {}
}

class Appverifiycode extends Appverfiycose {
  @override
  late String code;
  gotorepass() {
    Get.toNamed("/resetpass");
  }

  gotosuccesssigneup() {
    Get.toNamed("/successsigneup");
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
}
