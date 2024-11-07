import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/email_provider.dart';
import 'email_list_item.dart';

class EmailList extends StatelessWidget {
  const EmailList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<EmailProvider>(
      builder: (context, emailProvider, child) {
        if (emailProvider.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (emailProvider.error != null) {
          debugPrint(emailProvider.error!);
        }

        return ListView.separated(
          itemCount: emailProvider.emails.length,
          itemBuilder: (context, index) {
            final email = emailProvider.emails[index];
            return EmailListItem(email: email);
          },
          separatorBuilder: (context, index) => const Divider(
            height: 1,
            thickness: 1,
            indent: 16,
            endIndent: 16,
          ),
        );
      },
    );
  }
}
