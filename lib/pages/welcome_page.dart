import 'package:flutter/material.dart';
import 'package:vanira/main.dart';
import 'package:vanira/pages/login_page.dart';
import 'package:vanira/pages/signup_page.dart';
import 'package:vanira/templates/buttons/next_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> with AppMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryContainer,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              bottom: getScreenHeight(context) * 0.2,
              child: Image.asset(
                "assets/images/stress.png",
                width: getScreenWidth(context),
                fit: BoxFit.fitHeight
              ),
            ),
            Column(
              children: [
                Expanded(child: Container(),),
                Container(
                  width: getScreenWidth(context),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 40, 20, 40),
                    child: Column(
                      children: [
                        Text(
                          "Atasi masalah stres",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: bold,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Text(
                              "Menurut seorang ahli jantung preventif, orang yang kurang berlibur biasanya lebih merasa stres. Sekarang kesempatan kamu untuk mengatasi stres dengan berlibur bersama Vanira!",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.onPrimary,
                                height: 1
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: secondaryContainer,
                          ),
                        ),
                        SizedBox(height: 20,),
                        NextButton(
                          onPressed: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Welcome2Page()));
                          },
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 35,
                        offset: Offset(0, 5),
                      )
                    ],
                    color: Colors.white,
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

class Welcome2Page extends StatefulWidget {
  const Welcome2Page({super.key});

  @override
  State<Welcome2Page> createState() => _Welcome2PageState();
}

class _Welcome2PageState extends State<Welcome2Page> with AppMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryContainer,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: Container(),
            ),
            Container(
              child: Image.asset(
                "assets/images/fer.png",
                height: getScreenHeight(context) * .40,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 25,
                    offset: Offset(0, 20),
                  )
                ],
              ),
            ),
            Container(
              width: getScreenWidth(context),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 40, 20, 40),
                child: Column(
                  children: [
                    Text(
                      "Temukan destinasi",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "Fitur Facial Emotion Recognition untuk menemukan tujuan destinasi yang pas dengan emosi dan preferensi kamu!",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: medium,
                            color: Theme.of(context).colorScheme.onPrimary,
                            height: 1
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: secondaryContainer,
                      ),
                    ),
                    SizedBox(height: 20,),
                    NextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                      },
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 35,
                    offset: Offset(0, 5),
                  )
                ],
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}