import 'package:ecommerce/controler/auth/forgetpass/forget.dart';
import 'package:ecommerce/core/function/valiator.dart';
import 'package:ecommerce/view/widget/login/custombutomsingin.dart';
import 'package:ecommerce/view/widget/login/customtextfield.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';

class Forgetpass extends StatelessWidget {
  const Forgetpass({super.key});

  @override
  Widget build(BuildContext context) {
    Appforgetpasss control = Get.put(Appforgetpasss());
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              "Forget Password       #",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            )),
      ),
      body: Form(
        key: control.keys,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                "Check Email",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 30,
              ),
              Cutomtextfield(
                  isnum: false,
                  valid: (val) {
                    return validinput(val!, 30, 5, "email");
                  },
                  mycontroler: control.email,
                  hint: "Enter your email",
                  icon: Icons.email_outlined,
                  label: "Email"),
              Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Custobutom(
                  text: "check email",
                  onpress: () {
                    if (control.keys.currentState!.validate()) {
                      control.gotoverfiycode();
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
