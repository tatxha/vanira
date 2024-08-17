import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AppMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).splashColor,
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage('assets/logos/vanira.png'),
            width: getScreenWidth(context) * 0.35,
          ),
        )
      ),
    );
  }
}