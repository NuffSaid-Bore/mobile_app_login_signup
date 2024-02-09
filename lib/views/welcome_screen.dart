import 'package:flutter/material.dart';
import 'package:mobile_app_login_signup/components/custom_scaffold.dart';
import 'package:mobile_app_login_signup/components/custome_buttons.dart';
import 'package:mobile_app_login_signup/views/signin.dart';
import 'package:mobile_app_login_signup/views/signup.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      widget: Column(
        children: [
          Flexible(
            flex: 8,
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome \n',
                      style: TextStyle(
                          fontSize: 48.5,
                          fontWeight: FontWeight.w600,
                          color: Colors.deepOrange[700]),
                    ),
                    TextSpan(
                      text:
                          '\nPersonal details will be required to complete Sign Up',
                      style: TextStyle(
                        color: Colors.deepOrange[700],
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(bottom: -0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomWelcomeButton(
                        buttonText: 'Signup',
                        function: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (e) => const SignUp()),
                            );
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomWelcomeButton(
                        buttonText: 'Signin',
                        function: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (e) => const SignIn()),
                            );
                          });
                        },
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
