import 'package:flutter/material.dart';

import '../../../../data/models/email_model.dart';

class EmailStatus extends StatelessWidget {
  final EmailModel email;

  const EmailStatus({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: email.isPhishing ? Colors.red[50] : Colors.green[50],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: email.isPhishing ? Colors.red : Colors.green,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            email.isPhishing
                ? Icons.warning_amber_outlined
                : Icons.check_circle_outline,
            color: email.isPhishing ? Colors.red : Colors.green,
            size: 24,
          ),
          const SizedBox(width: 12),
          Text(
            email.isPhishing ? 'Phishing Detectado' : 'Email Seguro',
            style: TextStyle(
              color: email.isPhishing ? Colors.red : Colors.green,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}