import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.size, required this.text, required this.ontap});

  final Size size;
  final String text;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45,
        width: size.width * 0.7,
        decoration: BoxDecoration(
            color: Colors.purple, borderRadius: BorderRadius.circular(50)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
