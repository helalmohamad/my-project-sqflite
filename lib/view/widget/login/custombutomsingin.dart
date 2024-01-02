import 'package:flutter/material.dart';

class Custobutom extends StatelessWidget {
  final void Function()? onpress;
  final String text;
  const Custobutom({super.key, this.onpress, required this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.circular(40)),
      onPressed: onpress,
      color: const Color.fromARGB(255, 240, 107, 55),
      textColor: const Color.fromARGB(255, 250, 245, 245),
      child: Text(text),
    );
  }
}
