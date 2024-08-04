import 'package:flutter/material.dart';
import 'message_screen.dart';
import 'personality_screen.dart';
import 'memories_screen.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: const Color.fromARGB(225, 219, 174, 180), // Rose gold color
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.cake),
                  iconSize: 30.0, // Change icon size here
                  color: Colors.pink, // Change icon color here
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BirthdayWishesScreen(),
                    ),
                  ),
                ),
                const Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 18.0, // Change text size here
                    color: Colors.pink, // Change text color here
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.person),
                  iconSize: 30.0, // Change icon size here
                  color: Colors.blue, // Change icon color here
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PersonalityScreen(),
                    ),
                  ),
                ),
                const Text(
                  'Personality',
                  style: TextStyle(
                    fontSize: 18.0, // Change text size here
                    color: Colors.blue, // Change text color here
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.photo_album),
                  iconSize: 30.0, // Change icon size here
                  color: Colors.grey, // Change icon color here
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MemoriesScreen(),
                    ),
                  ),
                ),
                const Text(
                  'Moments',
                  style: TextStyle(
                    fontSize: 18.0, // Change text size here
                    color: Colors.grey, // Change text color here
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
