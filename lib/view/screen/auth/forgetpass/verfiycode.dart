import 'package:ecommerce/controler/auth/forgetpass/verfiycode.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verfiycode extends StatelessWidget {
  const Verfiycode({super.key});

  @override
  Widget build(BuildContext context) {
    Appverifiycode control = Get.put(Appverifiycode());
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 25),
            child: Text(
              "Verifiy Email",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            )),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              "Ckeck Code",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Enter your code you have reseved it to \n verifiy your email to change your password ",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.grey, fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OtpTextField(
              fieldWidth: 50,
              borderRadius: BorderRadius.circular(40),
              numberOfFields: 5,
              borderColor: Color.fromARGB(255, 36, 6, 107),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                control.gotorepass();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
