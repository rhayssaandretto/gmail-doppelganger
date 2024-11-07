import 'package:clone_gmail/src/domain/repositories/email_repository.dart';

import '../datasources/email_datasource.dart';
import '../models/email_model.dart';

class EmailRepositoryImpl implements EmailRepository {
  final EmailDatasource datasource;

  EmailRepositoryImpl(this.datasource);

  @override
  Future<List<EmailModel>> getEmails() async {
    return await datasource.fetchEmails();
  }
}
