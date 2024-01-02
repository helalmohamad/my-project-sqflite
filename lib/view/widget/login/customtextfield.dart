import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Cutomtextfield extends StatelessWidget {
  final String label;
  final String hint;
  final IconData icon;
  final bool isnum;
  final bool? secur;
  void Function()? onTap;
  String? Function(String?)? valid;
  final TextEditingController mycontroler;
  Cutomtextfield(
      {super.key,
      required this.label,
      this.secur,
      required this.isnum,
      required this.valid,
      required this.hint,
      this.onTap,
      required this.icon,
      required this.mycontroler});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: secur == false ? false : true,
      keyboardType: isnum
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      controller: mycontroler,
      decoration: InputDecoration(
          label: Text(
            label,
            style: const TextStyle(fontSize: 20),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          hintText: hint,
          suffixIcon: InkWell(onTap: onTap, child: Icon(icon)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40))),
    );
  }
}
