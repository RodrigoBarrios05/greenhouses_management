import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://api.example.com';

  Future<String> fetchData() async {
    final response = await http.get(Uri.parse('$baseUrl/data'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  // Agrega más métodos para interactuar con la API según tus necesidades

}