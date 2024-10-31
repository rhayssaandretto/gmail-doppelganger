/*
  - the repo in the domain layer outlines what operations the app can do, but doesn't worry about the specific implementation details.
  - technology agnostic: independent of any technology or framework.
  
  - here you define what the app can do
 */
import '../../data/models/email_model.dart';

abstract class EmailRepository {
  Future<List<EmailModel>> getEmails(String idToken);
}
