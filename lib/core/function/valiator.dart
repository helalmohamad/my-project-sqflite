import 'package:get/get.dart';

validinput(String val, int max, int min, String type) {
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "this is not email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "this is not phone number";
    }
  }
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "this is not username";
    }
  }
  if (val.isEmpty) {
    return "this is null ";
  }

  if (val.length < min) {
    return "this is < $min ";
  }
  if (val.length > max) {
    return "this is > $max ";
  }
}
