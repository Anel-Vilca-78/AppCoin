// lib/services/expense_service.dart
import 'package:http/http.dart' as http;
import 'dart:convert';

class ExpenseService {
  static Future<List<dynamic>> getExpenses() async {
    var url = Uri.parse('http://10.0.2.2:8080/expense');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      // Asegúrate de que esto coincida con la estructura real de tu respuesta
      return data['data'] as List<dynamic>;
    } else {
      throw Exception('Failed to load expenses');
    }
  }
}
