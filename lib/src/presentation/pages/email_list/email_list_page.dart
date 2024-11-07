import 'package:flutter/material.dart';
import 'package:clone_gmail/src/services/auth/auth_service.dart';
import '../../../services/auth/auth_page.dart';
import 'widgets/email_list.dart';

class EmailListPage extends StatelessWidget {
  const EmailListPage({super.key});

  void signUserOut(BuildContext context) async {
    await AuthService().signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const AuthPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Caixa de entrada'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => signUserOut(context),
          ),
        ],
      ),
      body: const EmailList(),
    );
  }
}
