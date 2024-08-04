import 'package:flutter/material.dart';
import 'package:personal_project/second_screen.dart'; // Import your second screen
import 'custom_text_widget.dart';
import 'custom_gradient.dart';



void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: CustomGradientBackground(
        colors: const [
          Color.fromARGB(255, 239, 198, 198),
          Color.fromARGB(255, 183, 110, 121),
          Color.fromARGB(255, 188, 219, 245),
        ], // Change this to your desired gradient colors
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 350.0,
              ),
              child: CustomTextWidget(
                text: 'Happy Birthday',
                fontSize: 55,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Builder(
                builder: (BuildContext context) => Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(162, 249, 249, 249),
                      borderRadius: BorderRadius.circular(50)),
                  // Set your desired background color here
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SecondScreen()),
                      );
                    },
                    child: const CustomTextWidget(
                      text: 'Click Here To Wish !',
                      fontSize: 20,
                      color: Color.fromARGB(255, 114, 182, 238),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
