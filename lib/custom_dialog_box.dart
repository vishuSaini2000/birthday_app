import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final AssetImage backgroundImage;
  final String textContent;
  final TextStyle textStyle;
  final Widget? circleAvatar; // Optional parameter for CircleAvatar
  final EdgeInsetsGeometry? columnPadding; // Optional parameter for Column padding

  const CustomDialog({
    super.key,
    required this.backgroundImage,
    required this.textContent,
    required this.textStyle,
    this.circleAvatar, // Include optional parameter
    this.columnPadding, // Include optional parameter for padding
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent, // Set to transparent for image background
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: 700,
        height: 700,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              right: 16,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFC0CB), // Rose gold color
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: columnPadding ?? const EdgeInsets.all(16.0), // Use default padding if none provided
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (circleAvatar != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0), // Space between avatar and text
                          child: circleAvatar!,
                        ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          textContent,
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
