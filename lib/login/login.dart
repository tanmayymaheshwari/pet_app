import 'package:flutter/material.dart';
import 'package:pet_app/login/views/Signin_widget.dart';
import 'package:pet_app/login/views/Signup_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showSignIn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/signinimage.png',
              width: MediaQuery.of(context).size.width,
            ),
            
            showSignIn ? const SignInWidget() : const Signupwidget(),

            GestureDetector(
              onTap: () {
                setState(() {
                  showSignIn = !showSignIn;
                });
              },
              child: RichText(
                text: TextSpan(
                  text: showSignIn ? 'Don\'t have an account? ' : 'Already have an account? ',
                  style: const TextStyle(
                    color: Color.fromRGBO(30, 33, 68, 1),
                  ),
                  children: [
                    TextSpan(
                      text: showSignIn ? 'Sign Up' : 'Sign In',
                      style: const TextStyle(
                        color: Color.fromRGBO(30, 130, 239, 27),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text(
            //         showSignIn ? 'Don\'t have an account? ' : 'Already have an account? ',
            //       ),
            //       TextButton(
            //         onPressed: () {
            //           setState(() {
            //             showSignIn = !showSignIn;
            //           });
            //         },
            //         child: Text(showSignIn ? 'Sign Up' : 'Sign In'),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
