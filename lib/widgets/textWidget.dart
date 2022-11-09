import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final TextAlign? textAlign;

  const TextWidget(
      {super.key,
      required this.text,
      this.color,
      this.size,
      this.weight,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.inter(
          textStyle: TextStyle(
        color: color ?? Colors.black,
        fontWeight: weight,
        fontSize: size ?? 16,
      )),
    );
  }
}
