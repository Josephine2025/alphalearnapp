import 'package:alphalearnapp/main.dart';
import 'package:alphalearnapp/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFFF0FDF4),

//       //BOXSHAPE BACKGROUND CIRCLE USING STACK
//       body: Stack(
//         children: [
//           //Dark blue
//           Positioned(
//             top: -50,
//             left: -50,
//             child: Container(
//               width: 150,
//               height: 150,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF07386D),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),

//           //Yellow
//           Positioned(
//             top: 50,
//             left: 150,
//             child: Container(
//               width: 50,
//               height: 50,
//               decoration: const BoxDecoration(
//                 color: Color(0xFFFACC15),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),

//           //Dark blue
//           Positioned(
//             top: -50,
//             right: -50,
//             child: Container(
//               width: 200,
//               height: 200,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF07386D),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),

//           //Light blue
//           Positioned(
//             bottom: 250,
//             right: 50,
//             child: Container(
//               width: 30,
//               height: 30,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF38BDF8),
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),

//           //CENTER CIRCLE
//           // Center(
//           Center(
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Spacer(flex: 3),
//                 Image.asset(
//                   'assets/images/man-with-laptop.jpg',
//                   height: MediaQuery.of(context).size.height * 0.40,
//                   fit: BoxFit.contain,
//                 ),

//                 Transform.translate(
//                   offset: (Offset(0, -60)),
//                   child: Container(
//                     width: 180,
//                     height: 180,
//                     decoration: BoxDecoration(
//                       color: Colors.green[500],
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//                 ),

//                 const Spacer(flex: 1),

//                 //WELCOME TEXT
//                 const Text(
//                   'Welcome To\nAlpha Learn',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 34,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF1F2937),
//                   ),
//                 ),

//                 SizedBox(height: 10),
//                 //SECOND TEXT
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 40.0),
//                   child: Text(
//                     'Your companion through every lecture,\nevery quiz, and every late-night study.',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 16, color: Color(0xFF6B7280)),
//                   ),
//                 ),

//                 const Spacer(flex: 2),

//                 //GET STARTED BUTTON
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 20.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/signup');
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFF22C55E),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadiusGeometry.circular(12),
//                       ),
//                       padding: const EdgeInsets.symmetric(vertical: 18),
//                       minimumSize: const Size(double.infinity, 50),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Get Started',
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),

//                         SizedBox(width: 8),
//                         Icon(
//                           Icons.arrow_forward_ios,
//                           color: Colors.white,
//                           size: 18,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),

//                 const Spacer(flex: 1),
//               ],
//             ),
//           ),

//           const Positioned(
//             top: 40,
//             right: 20,
//             child: Row(
//               children: [
//                 Icon(Icons.search, color: Colors.grey, size: 24),
//                 Icon(Icons.close, color: Colors.grey, size: 24),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WelcomeScreen extends StatelessWidget {
//   const WelcomeScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Column(
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // Person-with-laptop image
//                 SizedBox(
//                   height: 240,
//                   child: Image.asset(
//                     'assets/images/man-with-laptop.jpg',
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 const SizedBox(height: 32),
//                 // Title: two lines, centered
//                 const Text(
//                   'Welcome To\nAlpha Learn',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black87,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // Subtitle
//                 const Text(
//                   'Your companion through every lecture, every quiz, and every late‑night study.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(fontSize: 16, color: Colors.black54),
//                 ),
//                 const SizedBox(height: 48),
//                 // Green "Get Started" button
//                 SizedBox(
//                   width: double.infinity,
//                   height: 56,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // TODO: Navigate to onboarding or main screen
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: const Color(0xFF00C853),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                     ),
//                     child: const Text(
//                       'Get Started',
//                       style: TextStyle(fontSize: 18, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // We layer the decorative circles *under* the actual content using a Stack.
    return Scaffold(
      body: Stack(
        children: [
          const DecorativeBackground(),
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Man with laptop image
                    Padding(
                      padding: const EdgeInsets.only(bottom: 32),
                      child: Image.asset(
                        'assets/images/man-with-laptop.jpg',
                        height: 260,
                        fit: BoxFit.contain,
                      ),
                    ),
                    // TITLE -----------------------------------------------------
                    Text(
                      'Welcome To\nAlpha Learn',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 12),
                    // SUBTITLE --------------------------------------------------
                    Text(
                      'Your companion through every lecture,\n'
                      'every quiz, and every late‑night study.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 32),
                    // CTA BUTTON → Sign‑In
                    ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignInScreen()),
                      ),

                      // GET STARTED BUTTON
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF22C55E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          minimumSize: const Size(double.infinity, 50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),

                            SizedBox(width: 8),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//                       child: ElevatedButton(
//                         onPressed: () {
//                           // TODO: Navigate to onboarding or main screen
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color(0xFF00C853),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(18),
//                           ),
//                         ),
//                         child: const Text(
//                           'Get Started',
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
