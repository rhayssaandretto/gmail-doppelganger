import 'package:clone_gmail/src/domain/repositories/email_repository.dart';

import '../datasources/email_api_datasource.dart';
import '../models/email_model.dart';

class EmailRepositoryImpl implements EmailRepository {
  final EmailApiDatasource datasource;

  EmailRepositoryImpl(this.datasource);

  @override
  Future<List<EmailModel>> getEmails(String idToken) async {
    return await datasource.fetchEmails(idToken);
  }
}
