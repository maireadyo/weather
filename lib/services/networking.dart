import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future<Map<String, dynamic>> getData() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data) as Map<String, dynamic>;
    } else {
      print(response.statusCode);
    }
    throw 'Problem with the get response';
  }
}
