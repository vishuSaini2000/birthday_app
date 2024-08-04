import 'package:flutter/material.dart';

class CustomGradientBackground extends StatelessWidget {
  final List<Color> colors;
  final Widget child;

  const CustomGradientBackground({
    super.key, // Pass key to the super constructor
    required this.colors,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: child,
    );
  }
}
