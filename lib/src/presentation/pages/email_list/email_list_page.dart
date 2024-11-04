import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/list.dart';
import '../../../services/auth/login_or_register.dart';

class EmailListPage extends StatelessWidget {
  EmailListPage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut(BuildContext context) {
    try {
      FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginOrRegisterPage()),
      );
      debugPrint("Usuário deslogado com sucesso!");
    } catch (e) {
      debugPrint("Erro ao deslogar: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[300],
        actions: [
          IconButton(
            icon: const Icon(Icons.logout_rounded),
            onPressed: () => signUserOut(context),
          )
        ],
      ),
      body: const ListGeneric(),
    );
  }
}
