import 'enum/email_status_enum.dart';

class EmailEntity {
  final String sender;

  final String description;

  final String? body;

  final EmailStatus isPhishing;

  EmailEntity({
    required this.sender,
    required this.description,
    this.body,
    required this.isPhishing,
  });
}
