import 'package:ecommerce/core/localization/changelang.dart';
import 'package:ecommerce/view/widget/language/buttomlang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Language extends GetView<Changelang> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 40,
            ),
            Buttomlang(
                textbutom: "ar",
                onpress: () {
                  controller.changelan("ar");
                  Get.toNamed('/onbonding');
                }),
            Buttomlang(
                textbutom: "en",
                onpress: () {
                  controller.changelan("en");
                  Get.toNamed('/onbonding');
                })
          ],
        ),
      ),
    );
  }
}
