import 'package:ecommerce/controler/auth/forgetpass/lloginn.dart';
import 'package:ecommerce/controler/auth/signin.dart';
import 'package:ecommerce/core/function/valiator.dart';
import 'package:ecommerce/view/widget/login/custombutomsingin.dart';
import 'package:ecommerce/view/widget/login/customlogo.dart';
import 'package:ecommerce/view/widget/login/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Loginn extends StatelessWidget {
  const Loginn({super.key});

  @override
  Widget build(BuildContext context) {
    Appsigninnnn control = Get.put(Appsigninnnn());
    return Scaffold(
      appBar: AppBar(
        title: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 25),
            child: Text(
              "sing in",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            )),
      ),
      body: Form(
        key: control.kee,
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const Customlogo(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "welcom Back",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "sign in with email and password \n OR contiues with social media",
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
                    return validinput(val!, 30, 5, "email");
                  },
                  mycontroler: control.email,
                  hint: "Enter your email",
                  icon: Icons.email_outlined,
                  label: "Email"),
              const SizedBox(
                height: 30,
              ),
              GetBuilder<Appsigninnnn>(
                builder: (controller) => Cutomtextfield(
                    onTap: () {
                      controller.changesecure();
                    },
                    secur: controller.secureval,
                    isnum: false,
                    valid: (val) {
                      return validinput(val!, 30, 5, "password");
                    },
                    mycontroler: control.password,
                    hint: "Enter your Password",
                    icon: Icons.lock_outline,
                    label: 'Passworld'),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  control.gotoforget();
                },
                child: const Text(
                  "forget password ?",
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.orange),
                ),
              ),
              Container(
                height: 50,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Custobutom(
                  text: "Sign In",
                  onpress: () {
                    if (control.kee.currentState!.validate()) {}
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account  ?  "),
                  InkWell(
                    onTap: () {
                      control.gotosignup();
                    },
                    child: const Text(
                      "Sign UP",
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
