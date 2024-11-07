import 'package:clone_gmail/src/data/models/email_model.dart';
import 'package:flutter/material.dart';
import '../../email_detail/email_details_page.dart';

class EmailListItem extends StatelessWidget {
  final EmailModel email;

  const EmailListItem({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        email.isPhishing ? Icons.warning : Icons.check_circle_outline_rounded,
        color: email.isPhishing ? Colors.red : Colors.lightGreen,
      ),
      title: Text(
        email.sender,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            email.description,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            (email.body == null || email.body!.isEmpty)
                ? 'Sem descrição'
                : email.body!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => EmailDetailsPage(email: email),
          ),
        );
      },
    );
  }
}
