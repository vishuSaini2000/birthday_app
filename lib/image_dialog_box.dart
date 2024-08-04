import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageDialog extends StatelessWidget {
  final AssetImage backgroundImage;
  final List<Map<String, dynamic>> rows;
  final EdgeInsetsGeometry? columnPadding;
  final EdgeInsetsGeometry? rowPadding; // Added rowPadding parameter
  final double? imageRadius;
  final double? fontSize;
  final String? fontFamily;
  final Color? fontColor;

  const ImageDialog({
    super.key, // Converted key to super parameter
    required this.backgroundImage,
    required this.rows,
    this.columnPadding,
    this.rowPadding, // Added rowPadding parameter
    this.imageRadius,
    this.fontSize,
    this.fontFamily,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
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
                  color: Color(0xFFFFC0CB),
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
                  padding: columnPadding ?? const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: rows.map((row) {
                      final imageWidget = row['image'] as ImageProvider?;
                      final textWidget = row['text'] as String?;

                      return Padding(
                        padding: rowPadding ?? const EdgeInsets.symmetric(vertical: 8.0), // Use rowPadding here
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (imageWidget != null)
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: imageRadius ?? 25.0,
                                backgroundImage: imageWidget,
                              ),
                            const SizedBox(width: 16.0),
                            Expanded(
                              child: Text(
                                textWidget ?? '',
                                style: GoogleFonts.getFont(
                                  fontFamily ?? 'Dancing Script', // Ensure the font name matches exactly
                                  fontSize: fontSize ?? 16.0,
                                  color: fontColor ?? Colors.black,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
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
