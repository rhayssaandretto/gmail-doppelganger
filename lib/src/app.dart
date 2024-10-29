import 'package:flutter/material.dart';

import 'presentation/pages/login/login_page.dart';

class Doppelmail extends StatelessWidget {
  const Doppelmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doppelmail',
      home: LoginPage(),
    );
  }
}
