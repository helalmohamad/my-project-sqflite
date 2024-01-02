import 'package:ecommerce/controler/getcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Bcontinue extends StatelessWidget {
  Bcontinue({super.key});
  final Appcontrolim control = Get.put(Appcontrolim());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 60),
      height: 40,
      width: 200,
      color: const Color.fromARGB(255, 190, 218, 241),
      child: MaterialButton(
        height: 20,
        onPressed: () {
          control.next();
        },
        child: const Text(
          "continues",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
