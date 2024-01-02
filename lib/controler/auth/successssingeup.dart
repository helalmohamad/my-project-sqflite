// ignore: depend_on_referenced_packages

import 'package:get/get.dart';

abstract class Appsuccesssign extends GetxController {
  gotosuccesssignup() {}
}

class Appsuccesssignup extends Appsuccesssign {
  gotologin() {
    Get.offAllNamed("/login");
  }

  gotologinn() {
    Get.offAllNamed("/loginn");
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}
}
