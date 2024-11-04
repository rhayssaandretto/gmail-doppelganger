import 'package:clone_gmail/src/services/auth/auth_page.dart';
import 'package:flutter/material.dart';

class Doppelmail extends StatelessWidget {
  const Doppelmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doppelmail',
      home: AuthPage(),
    );
  }
}
