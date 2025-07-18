import 'package:alphalearnapp/screens/favourites_screen.dart';
import 'package:alphalearnapp/screens/home_screen.dart';
import 'package:alphalearnapp/screens/movies_screen.dart';
import 'package:alphalearnapp/screens/profile_screen.dart';
import 'package:alphalearnapp/screens/sign_in_screen.dart';
import 'package:alphalearnapp/screens/sign_up_screen.dart';
import 'package:alphalearnapp/screens/splash_screen.dart';
import 'package:alphalearnapp/screens/welcome_screen.dart';
import 'package:alphalearnapp/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AlphaLearnApp());
}

class AlphaLearnApp extends StatelessWidget {
  const AlphaLearnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alpha Learn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto,',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/signin': (context) => const SignInScreen(),
        '/main_app': (context) => const MainAppScreen(),
      },
    );
  }
}

//A WRAPPER SCREEN FOR THE MAIN APP WITH BOTTOM NAV

class MainAppScreen extends StatefulWidget {
  const MainAppScreen({super.key});

  @override
  State<MainAppScreen> createState() => _MainAppScreenState();
}

class _MainAppScreenState extends State<MainAppScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const MoviesScreen(),
    const FavouritesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),

      // ----- Text styles ------------------------------------------------
      // textTheme: const TextTheme(
      //   headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      //   bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),)
    );
  }
}

//  DECORATIVE BACKGROUND CIRCLES

class DecorativeBackground extends StatelessWidget {
  const DecorativeBackground({super.key});

  Widget _circle(double diameter, Color color) => Container(
    width: diameter,
    height: diameter,
    decoration: BoxDecoration(color: color, shape: BoxShape.circle),
  );

  @override
  Widget build(BuildContext context) {
    // Stack allows us to position the circles partly outside the visible

    return IgnorePointer(
      // ensures the circles don't block user interaction
      ignoring: true,
      child: Stack(
        children: [
          // TOP‑LEFT large navy circle
          Positioned(
            top: -70,
            left: -60,
            child: _circle(180, Color(0xFF07386D)),
          ),

          // TOP‑RIGHT navy circle
          Positioned(
            top: -40,
            right: -40,
            child: _circle(220, Color(0XFF07386D)),
          ),

          // BOTTOM‑LEFT green circle ( man with image)
          Positioned(
            bottom: 160,
            left: -90,
            child: _circle(280, Colors.green.withOpacity(0.50)),
          ),

          // Small accent dots
          Positioned(top: 140, left: 40, child: _circle(24, Color(0XFFFACC15))),
          Positioned(
            bottom: 200,
            right: 60,
            child: _circle(32, Color(0XFF38BDF8)),
          ),
        ],
      ),
    );
  }
}
