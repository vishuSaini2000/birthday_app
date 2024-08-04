import 'package:flutter/material.dart';
import 'custom_gradient.dart';
import 'image_dialog_box.dart'; // Import your ImageDialog
import 'package:google_fonts/google_fonts.dart';
import 'package:personal_project/special_text_container.dart';
import 'custom_dialog_box.dart';

class MemoriesScreen extends StatelessWidget {
  const MemoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradientBackground(
        colors: const [
          Color.fromARGB(255, 222, 213, 242),
          Color.fromARGB(255, 202, 219, 250),
          Color.fromARGB(255, 234, 131, 146),
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
                        return const ImageDialog(
                          backgroundImage: AssetImage(
                              'assets/images/memories_dialog_box_background.jpg'),
                          rows: [
                            {
                              'image': AssetImage(
                                      'assets/images/first_image_memories_dialog_box.jpg')
                                  as ImageProvider,
                              'text':
                                  'Our Data Science Journey', // Changed from Text widget to String
                            },
                            {
                              'image': AssetImage(
                                      'assets/images/second_image_memories_dialog_box.jpeg')
                                  as ImageProvider,
                              'text':
                                  'The Hot Sauce', // Changed from Text widget to String
                            },
                            {
                              'image': AssetImage(
                                      'assets/images/third_image_dialog_box.jpeg')
                                  as ImageProvider,
                              'text':
                                  'Special Day for Me', // Changed from Text widget to String
                            },
                          ],
                          columnPadding: EdgeInsets.all(16.0),
                          rowPadding: EdgeInsets.only(top: 50.0),
                          imageRadius: 50.0,
                          fontSize: 25.0, // Example font size
                          fontColor: Color.fromARGB(255, 238, 68, 93),
                           // Example font color
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
                    text: 'Memories',
                  ),
                ),
              ),
            ),
            Align(
  alignment: Alignment.bottomRight,
  child: Container(
    margin: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CustomDialog(circleAvatar: CircleAvatar(
                            backgroundImage: AssetImage(
                                'assets/vishal_avatar.jpeg'),
                            radius: 50,
                          ),
                      backgroundImage:AssetImage('assets/images/last_message_dialog_box.jpg'),
                      textContent: '''I created this app as a birthday gift to mark a fresh, positive start. I'll always be here for you, whether you reach out or not. No grudges—take care, and happy birthday!''',
                      textStyle: TextStyle(fontSize: 30.0,
                            color: Color.fromARGB(255, 183, 110, 121)),
                    ),
                  ),
                );
              },
              icon:const  Icon(Icons.email),
            );
          },
        ),
      ],
    ),
  ),
)

          ],
        ),
      ),
    );
  }
}
