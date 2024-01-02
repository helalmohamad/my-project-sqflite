import 'package:ecommerce/core/services/myservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class mymiddleware extends GetMiddleware {
  Myservice myservice = Get.find();
  @override
  int? priority = 1;
  RouteSettings? redirect(String? route) {
    if (myservice.sharedpref.getString("onboard") == "yes") {
      return const RouteSettings(name: "/login");
    }
    return null;
  }
}
