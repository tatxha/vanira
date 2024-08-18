import 'package:flutter/material.dart';
import 'package:vanira/pages/login_page.dart';
import 'package:vanira/pages/profile_page.dart';
import 'package:vanira/pages/mark_page.dart';
import 'package:vanira/pages/home_page.dart';
import 'package:vanira/pages/signup_page.dart';
import 'package:vanira/pages/splash_page.dart';
import 'package:vanira/pages/welcome_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFFEEFFF2),
          onPrimary: const Color(0xFF2E694B),
          secondary: const Color(0xFF67A076),
          tertiary: const Color(0xFFFE9F6A),
          onTertiary: const Color(0xFFF5BE9F),
        ),
        fontFamily: 'Montserrat',
        scaffoldBackgroundColor: Colors.white,
        dividerColor: Color(0xFFBDD7C3),
        splashColor: Color(0xFFEEFFF2),
      ),
    );
  }
}

// Mixin tetap harus digunakan di widget atau dalam metode yang memerlukan context
mixin AppMixin {
  double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  FontWeight bold = FontWeight.w700;
  FontWeight semi = FontWeight.w600;
  FontWeight medium = FontWeight.w500;
  FontWeight regular = FontWeight.w400;
  Color primaryIcon = Color(0xFF2E694B);
  Color secondaryIcon = Color(0xFFFFC107);
  Color primaryContainer = Color(0xFFEEFFF2);
  Color secondaryContainer = Color(0xFFF4F3F2);
}
