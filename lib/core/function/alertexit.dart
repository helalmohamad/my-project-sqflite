import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Alertexit() {
  Get.defaultDialog(
      middleText: "are you sure to exit",
      title: "warring",
      actions: [
        ElevatedButton(
            onPressed: () {
              exit(0);
            },
            child: Text("ok")),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("cancel"))
      ]);
}
