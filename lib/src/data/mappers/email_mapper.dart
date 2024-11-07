import 'dart:convert';

import '../models/email_model.dart';

class EmailMapper {

  static EmailModel fromMap(Map<String, dynamic> map) {
    return EmailModel(
      sender: map['sender'],
      description: map['description'],
      body: map['body'],
      isPhishing: map['is_phishing'] as bool,
    );
  }

  static Map<String, dynamic> toMap(EmailModel email) {
    return {
      'sender': email.sender,
      'description': email.description,
      'body': email.body,
      'is_phishing': email.isPhishing,
    };
  }

  static List<EmailModel> fromList(String list) {
    List<Map<String, dynamic>> emails =
        List<Map<String, dynamic>>.from(jsonDecode(list));

    return emails.map((e) => fromMap(e)).toList();
  }
}
