import 'package:ecommerce/controler/getcontroller.dart';
import 'package:ecommerce/data/datasource/statics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trenslate extends StatelessWidget {
  Trenslate({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Appcontrolim>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  appstatic.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        margin:
                            const EdgeInsets.only(right: 2, top: 0, bottom: 20),
                        width: controller.page == index ? 20 : 8,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(115, 128, 171, 235),
                            borderRadius: BorderRadiusDirectional.circular(10)),
                      )),
            ]));
  }
}
