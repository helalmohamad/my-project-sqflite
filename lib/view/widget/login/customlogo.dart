import 'package:ecommerce/core/constace/imagelink.dart';
import 'package:flutter/widgets.dart';

class Customlogo extends StatelessWidget {
  const Customlogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagelik.logo,
      height: 150,
    );
  }
}
