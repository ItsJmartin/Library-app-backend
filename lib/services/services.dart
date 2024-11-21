import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:chat_app/models/contact_model.dart';

class ContactService {
  String apiUrl = "https://crudcrud.com/api/2d0856c9108a4a09ba4688f0a1aaf8c2";

  ContactService({required this.apiUrl});

  Future<bool> saveContact(Contact contact) async {
    try {
      final response = await http.post(
        Uri.parse('$apiUrl/contacts'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(contact.toJson()),
      );

      if (response.statusCode == 201) {
        return true; // Successfully saved
      } else {
        print('Failed to save contact: ${response.body}');
        return false; // Error saving contact
      }
    } catch (e) {
      print('Error saving contact: $e');
      return false;
    }
  }
}
