import 'enum/email_status_enum.dart';

class EmailModel {
  final String sender;

  final String description;

  final String? body;

  final EmailStatus isPhishing;

  EmailModel({
    required this.sender,
    required this.description,
    this.body,
    required this.isPhishing,
  });
}
