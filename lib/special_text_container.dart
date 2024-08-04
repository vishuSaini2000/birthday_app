import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart'; // Assuming you're using GoogleFonts

class SpecialText extends StatelessWidget {
  final double height;
  final double width;
  final TextStyle style;
  final BoxDecoration decoration;
  final String text;

  const SpecialText({
    super.key,
    required this.height,
    required this.width,
    required this.style,
    required this.decoration,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: decoration,
      child: Center(
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
