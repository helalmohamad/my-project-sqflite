import 'package:ecommerce/controler/auth/forgetpass/repass.dart';
import 'package:ecommerce/core/function/valiator.dart';
import 'package:ecommerce/view/widget/login/custombutomsingin.dart';

import 'package:ecommerce/view/widget/login/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class resetpass extends StatelessWidget {
  const resetpass({super.key});

  @override
  Widget build(BuildContext context) {
    Appsuccesscode control = Get.put(Appsuccesscode());
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 25),
            child: Text(
              "success code",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            )),
      ),
      body: Form(
        key: control.keysss,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "welcom ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "enter your new password",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(color: Colors.grey, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Cutomtextfield(
                  isnum: false,
                  valid: (val) {
                    return validinput(val!, 30, 5, "password");
                  },
                  mycontroler: control.password,
                  hint: "Enter your paasssword",
                  icon: Icons.lock_outline,
                  label: "password"),
              const SizedBox(
                height: 30,
              ),
              Cutomtextfield(
                  isnum: false,
                  valid: (val) {
                    return validinput(val!, 30, 5, "password");
                  },
                  mycontroler: control.repassword,
                  hint: "re Enter your Password",
                  icon: Icons.lock_outline,
                  label: 're Passworld'),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Custobutom(
                  text: "save",
                  onpress: () {
                    if (control.keysss.currentState!.validate()) {
                      control.gotosuccesssignupp();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
