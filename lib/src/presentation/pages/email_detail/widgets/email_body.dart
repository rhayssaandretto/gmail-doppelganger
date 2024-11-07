import 'package:flutter/material.dart';

import '../../../../data/models/email_model.dart';

class EmailBody extends StatelessWidget {
  final EmailModel email;

  const EmailBody({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        email.body ?? 'Sem conteúdo',
        style: const TextStyle(
          fontSize: 16,
          color: Colors.black87,
          height: 1.5,
        ),
      ),
    );
  }
}