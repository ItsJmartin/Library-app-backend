
class Contact {
  final String name;
  final String phoneNumber;
  final String email;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.email,
  });

  // Convert JSON to Contact
  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      name: json['name'],
      phoneNumber: json['phone_number'],
      email: json['email'],
    );
  }

  // Convert Contact to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'phone_number': phoneNumber,
      'email': email,
    };
  }
}