class EmailModel {
  final String sender;

  final String description;

  final String? body;

  final bool isPhishing;

  EmailModel({
    required this.sender,
    required this.description,
    this.body,
    required this.isPhishing,
  });
}
