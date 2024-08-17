import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vanira/main.dart';
import 'package:vanira/pages/login_page.dart';
import 'package:vanira/templates/buttons/primary_button.dart';
import 'package:vanira/templates/forms/form_icon.dart';
import 'package:vanira/templates/forms/form_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with AppMixin{
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController = TextEditingController();

  bool _obscureText = true;
  bool _obscureConfirmationText = true;

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
                    "Daftar",
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
                              inputLabel: "Nama Lengkap",
                              labelFontSize: 18,
                              hintText: "Masukkan Nama Lengkap",
                              hintTextSize: 16,
                              icon: Icons.alternate_email_rounded,
                              controller: _nameController,
                            ),
                            SizedBox(height: 18,),
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
                            SizedBox(height: 18,),
                            FormIcon(
                              inputLabel: "Konfirmasi Kata Sandi",
                              labelFontSize: 18,
                              hintText: "Konfirmasi Kata Sandi",
                              hintTextSize: 16,
                              icon: Icons.key,
                              suffixIcon: _obscureConfirmationText ? Icons.visibility_off_rounded : Icons.visibility,
                              controller: _passwordConfirmationController,
                              onPressed: () {
                                setState(() {
                                  _obscureConfirmationText = !_obscureConfirmationText;
                                });
                              },
                              obscureText: _obscureConfirmationText,
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
                          "Atau buat menggunakan",
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
                          text: "Sudah punya akun? "
                        ),
                        TextSpan(
                          text: "Masuk",
                          style: TextStyle(fontWeight: bold),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
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