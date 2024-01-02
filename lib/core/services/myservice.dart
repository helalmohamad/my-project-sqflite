// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class Myservice extends GetxService {
  late SharedPreferences sharedpref;
  Future<Myservice> inite() async {
    sharedpref = await SharedPreferences.getInstance();
    return this;
  }
}

initial() async {
  await Get.putAsync(() => Myservice().inite());
}
