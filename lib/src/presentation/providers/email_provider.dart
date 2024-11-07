import 'package:clone_gmail/src/data/models/email_model.dart';
import 'package:clone_gmail/src/data/repositories/email_repository_impl.dart';
import 'package:flutter/material.dart';

import '../../data/datasources/email_datasource.dart';

class EmailProvider extends ChangeNotifier {
  List<EmailModel> _emails = [];
  bool _isLoading = true;
  String? _error;

  List<EmailModel> get emails => _emails;
  bool get isLoading => _isLoading;
  String? get error => _error;

  EmailProvider() {
    loadEmails();
  }

  Future<void> loadEmails() async {
    _isLoading = true;
    notifyListeners();

    try {
      final datasource = EmailDatasource();
      final repository = EmailRepositoryImpl(datasource);
      _emails = await repository.getEmails();
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar emails: $e';
      debugPrint(_error);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
