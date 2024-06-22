import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpService {
  final String baseUrl = 'https://eman90-demo.hf.space/predict';

  Future<Map<String, dynamic>> uploadImage(String imagePath) async {
    var request = http.MultipartRequest('POST', Uri.parse(baseUrl));
    request.files.add(await http.MultipartFile.fromPath('file', imagePath));
    var response = await request.send();

    if (response.statusCode == 200) {
      var responseData = await http.Response.fromStream(response);
      return json.decode(responseData.body);
    } else {
      throw Exception('Failed to upload image');
    }
  }
}
