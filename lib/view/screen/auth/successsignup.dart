import 'package:ecommerce/controler/auth/successssingeup.dart';
import 'package:ecommerce/view/widget/login/custombutomsingin.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class successsignnup extends StatelessWidget {
  const successsignnup({super.key});

  @override
  Widget build(BuildContext context) {
    Appsuccesssignup control = Get.put(Appsuccesssignup());
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 25),
            child: Text(
              "success Sing Up",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            )),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: const Icon(
                Icons.check_circle_outline,
                size: 200,
                color: Colors.green,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 50),
              child: Custobutom(
                text: "go to log iin",
                onpress: () {
                  control.gotologinn();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
