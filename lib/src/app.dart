import 'package:flutter/material.dart';

import 'presentation/pages/email_list/email_list_page.dart';

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
