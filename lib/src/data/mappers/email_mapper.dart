import 'dart:convert';

import 'package:clone_gmail/src/data/models/email_model.dart';

class EmailMapper {
  static EmailEntity fromMap(Map<String, dynamic> map) {
    return EmailEntity(
      sender: map['sender'],
      description: map['description'],
      body: map['body'],
      isPhishing: map['is_phishing'],
    );
  }

  static Map<String, dynamic> toMap(EmailEntity email) {
    return {
      'sender': email.sender,
      'description': email.description,
      'body': email.body,
      'is_phishing': email.isPhishing,
    };
  }

  static List<EmailEntity> fromList(String list) {
    List<Map<String, dynamic>> emails =
        List<Map<String, dynamic>>.from(jsonDecode(list));

    return emails.map((e) => fromMap(e)).toList();
  }
}
