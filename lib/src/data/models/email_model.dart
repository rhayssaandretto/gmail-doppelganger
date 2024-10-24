class EmailEntity {
  // sender, description, body?, is_phishin (enum - true, false ou unresolved)

  final String sender;

  final String description;

  final String? body;

  Enum isPhishing;

  EmailEntity({
    required this.sender,
    required this.description,
    this.body,
    required this.isPhishing,
  });
}
