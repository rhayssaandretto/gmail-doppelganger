import 'package:clone_gmail/src/presentation/pages/email_list/email_list_page.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/login/login_page.dart';

class Doppelmail extends StatelessWidget {
  const Doppelmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doppelmail',
      home: EmailListPage(),
    );
  }
}
