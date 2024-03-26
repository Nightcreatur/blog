import 'package:blog/core/theme/color_pallet.dart';
import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key, required this.text, required this.submit});
  final String text;
  final VoidCallback submit;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,
          ], begin: Alignment.bottomLeft, end: Alignment.topRight),
          borderRadius: BorderRadius.circular(10)),
      child: ElevatedButton(
        onPressed: submit,
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(395, 55),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(
          text,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
