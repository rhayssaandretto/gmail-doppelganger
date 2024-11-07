import 'package:flutter/material.dart';

import '../../../data/models/email_model.dart';
import 'widgets/email_sender_info.dart';
import 'widgets/email_status.dart';
import 'widgets/email_body.dart';

class EmailDetailsPage extends StatelessWidget {
  final EmailModel email;

  const EmailDetailsPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Email'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SenderInfo(email: email),

              const SizedBox(height: 20),

              EmailStatus(email: email),

              const SizedBox(height: 20),
              
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 12.0),
                  child: Text(
                    'Conteúdo do Email:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              EmailBody(email: email),
            ],
          ),
        ),
      ),
    );
  }
}
