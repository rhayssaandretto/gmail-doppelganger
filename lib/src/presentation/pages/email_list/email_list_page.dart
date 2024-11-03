import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/list.dart';

class EmailListPage extends StatelessWidget {
  const EmailListPage({super.key});

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doppelmail'),
        backgroundColor: Colors.pink[300],
        actions: [
          IconButton(
              icon: const Icon(Icons.logout_rounded),
              onPressed: () {
                signUserOut;
              })
        ],
      ),
      body: const ListGeneric(),
    );
  }

}
