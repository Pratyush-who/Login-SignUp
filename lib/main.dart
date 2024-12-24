import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Luffy_Adventure/pages/login.dart';
import 'package:Luffy_Adventure/pages/welcome.dart';
import 'package:Luffy_Adventure/pages/signup.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter_Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(225, 140, 241, 190),
        scaffoldBackgroundColor: const Color(
          0xfff6f6f6,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(
            0xfff6f6f6,
          ),
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => WelcomePage(),
        "/login": (context) => LoginPage(),
        "/signup": (context) => SignUpPage(),
      },
    );
  }
}
