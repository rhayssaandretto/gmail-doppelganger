import 'package:clone_gmail/src/data/mappers/email_mapper.dart';
import 'package:clone_gmail/src/data/models/email_model.dart';
import 'package:flutter/services.dart';

class EmailDatasource {
  Future<List<EmailModel>> fetchEmails() async {
    final String response = await rootBundle.loadString('assets/emails.json');

    return EmailMapper.fromList(response);
  }
}
