import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/special_text_container.dart';
import 'custom_gradient.dart';
import 'custom_dialog_box.dart';
import 'personality_screen.dart';
import 'memories_screen.dart';
// import 'audio_widget.dart';

class BirthdayWishesScreen extends StatelessWidget {
  const BirthdayWishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientBackground(
        colors: const [
          Color.fromARGB(255, 163, 231, 182),
          Color.fromARGB(255, 183, 110, 121),
          Color.fromARGB(255, 227, 145, 157),
          Color.fromARGB(255, 232, 186, 157),
          Color.fromARGB(255, 217, 233, 75),
        ],
        child: Stack(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: InkWell(
                  onTap: () {
                    // const AudioPlayerWidget(audioPath: 'assets/audio/dialog_birthday.mp3');
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDialog(circleAvatar:CircleAvatar(
                            backgroundImage: AssetImage('assets/images/message_avatar.jpg'),
                            radius: 50,
                          ) ,columnPadding: EdgeInsets.only(
                            top: 30,
                          ),
                          textStyle: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 183, 110, 121),
                          ),
                          backgroundImage: AssetImage(
                              'assets/images/message_dialog_background.jpg'),
                          textContent:
                              'Wishing you a very happy birthday! On your special day, I just want to remind you how wonderful you are. '
                              'Your kindness, laughter, and vibrant spirit make every moment brighter. '
                              'May this year bring you joy, love, and all the dreams you’ve been wishing for.',
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
                    text: 'Message',
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
                    IconButton(
                      icon: const Icon(Icons.person),
                      iconSize: 30.0,
                      color: Colors.blue,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PersonalityScreen(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20), // Spacing between icons
                    IconButton(
                      icon: const Icon(Icons.photo_album),
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
