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
    
    final double avatarSize = getScreenWidth(context) * 0.27;
    final double primaryIconSize = getScreenWidth(context) * 0.07;
    final double secondaryIconSize = getScreenWidth(context) * 0.09;
    final double backgroundPictHeight = getScreenWidth(context) * 9/16;
    final double backgroundPictWidth = getScreenWidth(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none, // Overflow untuk circle
              children: [
                Container(
                  height: backgroundPictHeight,
                  width: backgroundPictWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0), 
                      bottomRight: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/images/background_pict.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),                               
                Positioned(
                  bottom: -(avatarSize / 2), // Mengatur bagian circle yang berada di luar container
                  child: Container(
                    height: avatarSize + 10, 
                    width: avatarSize + 10,  
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF67A076),
                          Color(0xFFEEFFF2),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0), // Jarak antara border dan image
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/profile_pict.jpg',
                          height: avatarSize,
                          width: avatarSize,
                          fit: BoxFit.cover,
                        ),
                      ),
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
                        fontSize: 16,
                        fontWeight: medium,
                        color: Theme.of(context).colorScheme.secondary
                      ),
                    ),
                    SizedBox(height: getScreenHeight(context) * 0.008),
                    Text(
                      "Arya Aydin Margono",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: semi,
                        color: Theme.of(context).colorScheme.onPrimary
                      ),
                    ),
                    SizedBox(height: getScreenHeight(context) * 0.008),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.bookmark_rounded, 
                          color: secondaryIcon,
                          size: secondaryIconSize,
                        ),
                        SizedBox(width: secondaryIconSize * 0.2),
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
            SizedBox(height: getScreenHeight(context) * 0.025),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(15)),
                  color: secondaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Informasi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: semi,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      SizedBox(height: getScreenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/vanbot.png'),
                            height: primaryIconSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "VanBot",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getScreenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/store.png'),
                            height: primaryIconSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Rekomendasikan Toko Anda",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getScreenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/privacy.png'),
                            height: primaryIconSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Kebijakan Privasi",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getScreenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/term.png'),
                            height: primaryIconSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Syarat dan Ketentuan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: getScreenHeight(context) * 0.02),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:  BorderRadius.all(Radius.circular(15)),
                  color: secondaryContainer,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lainnya",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: semi,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      SizedBox(height: getScreenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/logout.png'),
                            height: primaryIconSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Keluar",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: getScreenHeight(context) * 0.01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image(
                            image: AssetImage('assets/icons/delete_account.png'),
                            height: primaryIconSize,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Hapus Akun",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: medium,
                                color: Theme.of(context).colorScheme.secondary
                              ),
                            ),
                          )
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