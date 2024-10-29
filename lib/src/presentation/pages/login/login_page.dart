import 'package:clone_gmail/src/presentation/pages/login/widgets/my_button.dart';
import 'package:clone_gmail/src/presentation/pages/login/widgets/my_textfield_page.dart';
import 'package:clone_gmail/src/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

import 'widgets/square_title.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 120,
              ),

              // welcome back, you've been missed
              const Text('Welcome back, you\'ve been missed!',
                  style: TextStyle(color: Color(0xFF616161), fontSize: 16)),

              // const SizedBox(
              //   height: 50,
              // ),

              // // username textfield
              // MyTextfieldPage(
              //   controller: usernameController,
              //   hintText: 'Username',
              //   obscureText: false,
              // ),

              // const SizedBox(
              //   height: 10,
              // ),

              // // password textfield
              // MyTextfieldPage(
              //   controller: passwordController,
              //   hintText: 'Password',
              //   obscureText: true,
              // ),

              // const SizedBox(
              //   height: 10,
              // ),

              // // forgot password?
              // const Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 25.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Text(
              //         'Forgot password?',
              //         style: TextStyle(color: Color(0xFF616161)),
              //       )
              //     ],
              //   ),
              // ),

              // const SizedBox(
              //   height: 25,
              // ),

              // // sign in button
              // MyButton(
              //   onTap: signUserIn,
              // ),

              const SizedBox(height: 30),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Continue with Google',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              // const Center(
              //   child:
              //       // google button
              //       SquareTile(imagePath: 'assets/images/google.png'),
              // ),

              ElevatedButton(
                  onPressed: () => print(AuthService().signInWithGoogle),
                  child: const Text('Sign in with Google')),

              // or continue with

              // google button

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
