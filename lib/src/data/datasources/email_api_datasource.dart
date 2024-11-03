import 'package:clone_gmail/src/data/mappers/email_mapper.dart';
import 'package:clone_gmail/src/data/models/email_model.dart';
import 'package:dio/dio.dart';

class EmailApiDatasource {
  final Dio dio;

  EmailApiDatasource(this.dio);

  Future<List<EmailModel>> fetchEmails(String token) async {
    try {
      final response = await dio.get(
        'http://127.0.0.1:8000/auth/get-all-emails',
        options: Options(
          headers: {
            'Authorization': token,
          },
        ),
      );

      if (response.statusCode == 200) {
        return EmailMapper.fromList(response.data);
      } else {
        throw Exception('Failed to load emails: ${response.data}');
      }
    } on DioException catch (e) {
      throw Exception('Failed to load emails: ${e.response?.data}');
    }
  }
}
