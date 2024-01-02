import 'package:ecommerce/controler/getcontroller.dart';
import 'package:ecommerce/data/datasource/statics.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class Pageviews extends StatelessWidget {
  Pageviews({super.key});
  final Appcontrolim control = Get.put(Appcontrolim());
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        height: 550,
        width: 400,
        child: GetBuilder<Appcontrolim>(
          builder: (controller) {
            return PageView.builder(
              controller: control.pagenum,
              onPageChanged: (value) {
                control.page = value;
                control.changetrans();
              },
              itemCount: appstatic.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Container(
                      height: 32,
                      margin: const EdgeInsets.only(top: 0),
                      child: Text(
                        appstatic[i].title,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Container(
                      height: 60,
                    ),
                    Image.asset(
                      appstatic[i].image,
                      width: 150,
                      height: 200,
                      fit: BoxFit.fill,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 60),
                        alignment: Alignment.center,
                        child: Text(
                          appstatic[i].body,
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                          textAlign: TextAlign.center,
                        ))
                  ],
                );
              },
            );
          },
        ));
  }
}
