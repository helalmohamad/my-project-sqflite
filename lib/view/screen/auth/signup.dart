import 'package:ecommerce/controler/auth/signup.dart';
import 'package:ecommerce/core/function/alertexit.dart';
import 'package:ecommerce/core/function/valiator.dart';
import 'package:ecommerce/view/widget/login/custombutomsingin.dart';
import 'package:ecommerce/view/widget/login/customtextfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signnup extends StatelessWidget {
  const signnup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => Appsignupp(), fenix: true);
    return Scaffold(
        appBar: AppBar(
          title: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 25),
              child: Text(
                "Sing Up",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.grey),
              )),
        ),
        body: PopScope(
            canPop: true,
            onPopInvoked: (didPop) => Alertexit(),
            child: GetBuilder<Appsignupp>(
              builder: (control) {
                return Form(
                  key: control.keys,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: ListView(
                      children: [
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
                            "sign up with email and password \n OR contiues with social media",
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
                        Cutomtextfield(
                            isnum: false,
                            valid: (val) {
                              return validinput(val!, 30, 5, "username");
                            },
                            mycontroler: control.username,
                            hint: "Enter your Username",
                            icon: Icons.person_4_outlined,
                            label: "Username"),
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
                        Cutomtextfield(
                            isnum: true,
                            valid: (val) {
                              return validinput(val!, 30, 5, "phone");
                            },
                            mycontroler: control.phone,
                            hint: "Enter your Phone",
                            icon: Icons.phone_android_outlined,
                            label: "Phone"),
                        const SizedBox(
                          height: 30,
                        ),
                        Cutomtextfield(
                            isnum: false,
                            valid: (val) {
                              return validinput(val!, 30, 5, "password");
                            },
                            mycontroler: control.password,
                            hint: "Enter your Password",
                            icon: Icons.lock_outline,
                            label: 'Passworld'),
                        const SizedBox(
                          height: 30,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 20),
                          child: Custobutom(
                            text: "Sign Up",
                            onpress: () {
                              if (control.keys.currentState!.validate()) {
                                control.gotoverfiycode();
                              }
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(" have an account  ?  "),
                            InkWell(
                              onTap: () {
                                control.gotosignin();
                              },
                              child: const Text(
                                "Sign in",
                                style: TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )));
  }
}
