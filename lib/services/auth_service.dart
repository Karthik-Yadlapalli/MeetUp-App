import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class Authorization {
  String baseUrl = "https://apiv2stg.promilo.com/user/oauth/token";

  //*encrypte password

  String encryptPassword(String password) {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes);
    print(hash.toString());
    return hash.toString();
  }

  Future<String> authenticate(String email, String password) async {
    final encryptedPassword = encryptPassword(password);
    String access_token='';

    Map<String, dynamic> jsonMap = {'username': email, 'password': encryptedPassword, 'grant_type': 'password'};

    http.Response response = await http
        .post(Uri.parse(baseUrl), body: jsonMap, headers: {"Authorization": "Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=="});

    if (response.statusCode == 200) {
      Map val = jsonDecode(response.body);
      access_token = val['response']['access_token'];
      print("G O T  :: R E S P O N S E");
    } else {}

    return access_token;
  }
}

// NOTE: use header 
// Key=Authorization 
// Value=Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==
