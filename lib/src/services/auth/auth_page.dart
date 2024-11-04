import 'package:clone_gmail/src/presentation/pages/email_list/email_list_page.dart';
import 'package:clone_gmail/src/services/auth/login_or_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return EmailListPage();
            } else {
              return const LoginOrRegisterPage();
            }
          }),
    );
  }
}
