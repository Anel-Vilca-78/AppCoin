import 'package:http/http.dart' as http;
import 'dart:convert';

class UserService {
  static Future<String> getUserEmail(String userId) async {
    var url = Uri.parse('http://10.0.2.2:8080/user/$userId');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return data['data']['email'] ?? 'Correo no disponible';
    } else {
      throw Exception('Failed to load user email');
    }
  }
}
