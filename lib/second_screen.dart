import 'package:flutter/material.dart';
import 'custom_bottom_navigation.dart';
import 'special_text_container.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatelessWidget {
  // Constructor accepting a Key parameter
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Uncomment if you want to use the app bar
      // appBar: AppBar(
      //   title: const Text('Birthday', style: TextStyle(color: Colors.white)),
      //   backgroundColor: const Color.fromARGB(192, 238, 193, 199),
      // ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          // Background Image
          Image.asset(
            'assets/images/ballon_background.jpg', // Replace with your image asset path
            fit: BoxFit.cover,
          ),
          // Content on top of the image
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(29, 0, 0,
                  0), // Background color of the container set to black
              borderRadius: BorderRadius.circular(8.0), // Rounded corners
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Text(
                    'Happy Birthday',
                    style: GoogleFonts.openSans(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 150, // Adjust the radius as needed
                        backgroundImage: AssetImage(
                            'assets/images/image_avatar.jpeg'), // Replace with your image URL
                      ),
                      const SizedBox(
                          height:
                              16), // Add some spacing between the CircleAvatar and Text
                      Text(
                        'Shilpi Ruhela', // Replace with your desired text
                        style: GoogleFonts.alegreyaSansSc(
                          fontSize: 50, // Adjust the font size as needed
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ), // Adjust the text style as needed
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                SpecialText(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(179, 249, 249, 249),
                  ),
                  height: 50,
                  width: 300,
                  style: const TextStyle(
                    fontSize: 35,
                    color: Color.fromARGB(255, 183, 110, 120),
                    fontWeight: FontWeight.bold,
                  ),
                  text: '5th August 2024',
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
