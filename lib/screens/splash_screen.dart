import 'package:alphalearnapp/main.dart';
import 'package:alphalearnapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     _navigateToWelcome();
//   }

//   //DISPLAY FOR 3 SECONDS
//   _navigateToWelcome() async {
//     await Future.delayed(const Duration(seconds: 3), () {});

//     if (mounted) {
//       Navigator.pushReplacementNamed(context, '/welcome');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0XFFF0FDF4),

//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             //APP LOGO
//             Image.asset('assets/logo/alpha logo.jpg', height: 150),

//             SizedBox(height: 20),
//             const Text(
//               'Alpha Learn',
//               style: TextStyle(
//                 fontSize: 36,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF1F2937),
//               ),
//             ),

//             SizedBox(height: 10),
//             const Text(
//               'Campus Anywhere',
//               style: TextStyle(fontSize: 18, color: Color(0XFF6B7280)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//  SPLASH SCREEN (2‑second delay then Welcome)
// ===============================================================
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          DecorativeBackground(), // circles behind splash content
          _SplashContent(),
        ],
      ),
    );
  }
}

class _SplashContent extends StatelessWidget {
  const _SplashContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/logo/alpha logo.jpg', width: 100),
          const SizedBox(height: 16),
          const Text(
            'Alpha Learn',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const CircularProgressIndicator(color: (Color(0xFF1F2937))),
        ],
      ),
    );
  }
}
