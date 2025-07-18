import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username = '@Officialkhikhi';
  final String name = 'Abegunde kikelomo josephine';
  final String email = 'kikelomojosephine12@gmail.com';
  final String bio =
      'Hi there!\n'
      "I'm a passionate Flutter developer focused on building intuitive and responsive mobile applications. With a strong foundation in Dart and Flutter, I aim to create seamless experiences across Android and iOS platforms.\n\n"
      'What I Do\n'
      '• Cross-Platform Development: Utilizing Flutter to develop applications that run smoothly on both Android and iOS.\n'
      '• UI/UX Design: Crafting user interfaces that are both functional and visually appealing.\n'
      '• Continuous Learning: Staying updated with the latest trends and best practices in mobile development.\n\n'
      'Tools & Technologies\n'
      'Languages: Dart\n'
      'Framework: Flutter\n'
      'Version Control: Git';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 241, 237),
      appBar: AppBar(
        title: Text(
          'MY PROFILE',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 1, 18, 47),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(244, 247, 251, 1),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PROFILE PICTURE
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  color: const Color.fromARGB(255, 1, 18, 47),
                ),
                const Positioned(
                  bottom: -50,

                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/kiki.jpg'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // PROFILE INFO
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //USERNAME
                  Text(
                    username,
                    style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 8),

                  //NAME
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  //EMAIL
                  Text(
                    email,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),

                  const SizedBox(height: 16),

                  //BIO
                  Text(
                    bio,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            const Divider(height: 32),

            // SOCIAL ICONS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _socialIcon(Icons.camera_alt),
                  _socialIcon(Icons.facebook),
                  _socialIcon(Icons.call),
                  _socialIcon(Icons.email),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _socialIcon(IconData icon) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: const Color.fromARGB(255, 192, 209, 241),
      child: Icon(icon, size: 25, color: const Color.fromARGB(255, 0, 0, 1)),
    );
  }
}
