import 'package:flutter/material.dart';

class Buttomlang extends StatelessWidget {
  final String textbutom;
  final void Function()? onpress;
  const Buttomlang({super.key, required this.textbutom, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 300,
        height: 50,
        margin: const EdgeInsets.only(top: 10),
        child: MaterialButton(
          minWidth: 120,
          onPressed: onpress,
          color: const Color.fromARGB(255, 177, 128, 144),
          child: Text(
            textbutom,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ));
  }
}
