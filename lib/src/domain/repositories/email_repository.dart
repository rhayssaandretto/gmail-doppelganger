import '../../data/models/email_model.dart';

abstract class EmailRepository {
  Future<List<EmailModel>> getEmails();
}
