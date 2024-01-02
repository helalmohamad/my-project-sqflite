import 'package:ecommerce/core/midlleware/middle.dart';
import 'package:ecommerce/view/screen/Onboinding.dart';
import 'package:ecommerce/view/screen/auth/forgetpass/forgetpass.dart';
import 'package:ecommerce/view/screen/auth/forgetpass/loginn.dart';
import 'package:ecommerce/view/screen/auth/forgetpass/successsignup.dart';
import 'package:ecommerce/view/screen/auth/forgetpass/verfiycode.dart';
import 'package:ecommerce/view/screen/auth/login.dart';
import 'package:ecommerce/view/screen/auth/forgetpass/resetpass.dart';
import 'package:ecommerce/view/screen/auth/signup.dart';

import 'package:ecommerce/view/screen/auth/verfiycode.dart';
import 'package:ecommerce/view/screen/auth/successsignup.dart';
import 'package:ecommerce/view/screen/language.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [mymiddleware()]),
  GetPage(name: "/login", page: () => const Login()),
  GetPage(name: "/loginn", page: () => const Loginn()),
  GetPage(name: "/onbonding", page: () => const Onboinding()),
  GetPage(name: "/signup", page: () => const signnup()),
  GetPage(name: "/resetpass", page: () => const resetpass()),
  GetPage(name: "/verfiycodee", page: () => const Verfiycodee()),
  GetPage(name: "/verfiycode", page: () => const Verfiycode()),
  GetPage(name: "/forgetpass", page: () => const Forgetpass()),
  GetPage(name: "/successsigneup", page: () => const successsignnup()),
  GetPage(name: "/successsigneupp", page: () => const successsignnupp())
];
