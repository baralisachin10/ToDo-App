import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButtons extends StatelessWidget {
  final String? text;
  VoidCallback? onPressed;
  MyButtons({super.key, @required this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: GoogleFonts.lato(),
      ),
    );
  }
}
