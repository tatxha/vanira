import 'package:flutter/material.dart';
import 'package:vanira/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with AppMixin{
  @override
  Widget build(BuildContext context) {
    
    final double avatarSize = getScreenWidth(context) * 0.25;
    final double primaryIconSize = getScreenWidth(context) * 0.08;
    final double secondaryIconSize = getScreenWidth(context) * 0.1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none, // overflow untuk circle
              children: [
                Container(
                  height: getScreenHeight(context) * 0.2,
                  color: Colors.amber,
                ),
                Positioned(
                  bottom: -(avatarSize/2), // mengatur bagian circle yang berada di luar container
                  child: Container(
                    height: avatarSize,
                    width: avatarSize,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0.32, 1),
                        colors: <Color>[
                          Color(0xFF67A076),
                          Color(0xFFEEFFF2),
                        ], 
                      )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: avatarSize * 0.6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "@aryaaydin",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: medium
                      ),
                    ),
                    Text(
                      "Udin",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: semi
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark_rounded, 
                          color: secondaryIcon,
                          size: secondaryIconSize,
                        ),
                        SizedBox(width: secondaryIconSize * 0.5),
                        Icon(
                          Icons.settings, 
                          color: secondaryIcon,
                          size: secondaryIconSize,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:  const BorderRadius.all(Radius.circular(15)),
                  color: secondaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Informasi",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: semi,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Image.asset(
                          //   'assets/icons/vanbot.png',
                          // ),
                          Image(
                            image: AssetImage('assets/icons/vanbot.png'),
                            height: getScreenHeight(context) * 0.05,
                          ),
                          const Text("Vanbot")
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}