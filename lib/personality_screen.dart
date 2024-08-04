import 'package:flutter/material.dart';
import 'custom_gradient.dart';
import 'custom_dialog_box.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/special_text_container.dart';
import 'memories_screen.dart';

class PersonalityScreen extends StatelessWidget {
  const PersonalityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientBackground(
        colors: const [
          Color.fromARGB(255, 136, 187, 238),
          Color.fromARGB(255, 240, 229, 169),
          Color.fromARGB(255, 227, 145, 157),
          Color.fromARGB(255, 242, 165, 118),
          Color.fromARGB(255, 232, 114, 93),
        ],
        child: Stack(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDialog(
                          textStyle: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 183, 110, 121),
                          ),
                          backgroundImage: AssetImage(
                              'assets/images/personality_dialog_background.jpg'),
                          circleAvatar: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/images/personality_avatar.jpg'),
                            radius: 50,
                          ),
                          textContent:
                              '''In your bold choices and generous heart, you showcases a rare blend of bravery and kindness\nmaking you an extraordinary pillar of support for your family.''',
                        );
                      },
                    );
                  },
                  child: SpecialText(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(162, 249, 249, 249),
                    ),
                    height: 65,
                    width: 180,
                    style: GoogleFonts.dancingScript(
                      fontSize: 35,
                      color: const Color.fromARGB(255, 138, 191, 235),
                    ),
                    text: 'Personality',
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: const EdgeInsets.all(
                    16.0), // Margin from the edges of the screen
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .end, // Align children to the end of the row
                  children: <Widget>[
                    const SizedBox(width: 20), // Spacing between icons
                    IconButton(
                      icon: const Icon(Icons.photo_album),
                      iconSize: 25.0,
                      color: Colors.grey,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MemoriesScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
