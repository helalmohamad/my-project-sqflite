import 'package:ecommerce/view/widget/onbonding/bottomcontieneu.dart';
import 'package:ecommerce/view/widget/onbonding/pageview.dart';
import 'package:ecommerce/view/widget/onbonding/traslate.dart';
import 'package:flutter/material.dart';

class Onboinding extends StatelessWidget {
  const Onboinding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Pageviews(), Trenslate(), Bcontinue()],
    ));
  }
}
