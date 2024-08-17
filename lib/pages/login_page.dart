import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vanira/main.dart';
import 'package:vanira/pages/signup_page.dart';
import 'package:vanira/templates/buttons/primary_button.dart';
import 'package:vanira/templates/forms/form_icon.dart';
import 'package:vanira/templates/forms/form_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with AppMixin{
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: getScreenHeight(context),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Masuk",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: bold,
                      color: theme.colorScheme.onPrimary,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                    child: Container(
                      width: 500,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FormText(
                              inputLabel: "Email",
                              labelFontSize: 18,
                              hintText: "Masukkan Email",
                              hintTextSize: 16,
                              icon: Icons.alternate_email_rounded,
                              controller: _emailController,
                            ),
                            SizedBox(height: 18,),
                            FormIcon(
                              inputLabel: "Kata Sandi",
                              labelFontSize: 18,
                              hintText: "Masukkan Kata Sandi",
                              hintTextSize: 16,
                              icon: Icons.key,
                              suffixIcon: _obscureText ? Icons.visibility_off_rounded : Icons.visibility,
                              controller: _passwordController,
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              obscureText: _obscureText,
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: primaryContainer,
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  PrimaryButton(
                    onPressed: () {
          
                    },
                    buttonText: "Masuk",
                    fontSize: 20
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text(
                          "Atau masuk menggunakan",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: medium,
                            color: theme.colorScheme.secondary,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: theme.colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap:() {
                            
                          },
                          child: Image.asset(
                            'assets/logos/google.png',
                          ),
                        ),
                        GestureDetector(
                          onTap:() {
                            
                          },
                          child: Image.asset(
                            'assets/logos/facebook.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: medium,
                        fontFamily: 'Montserrat',
                        color: theme.colorScheme.onPrimary,
                      ),
                      children: [
                        TextSpan(
                          text: "Belum punya akun? "
                        ),
                        TextSpan(
                          text: "Buat akun",
                          style: TextStyle(fontWeight: bold),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                          }
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}