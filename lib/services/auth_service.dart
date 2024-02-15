import 'dart:convert';
import 'package:crypto/crypto.dart';

class Authorization {
  String baseUrl = " https://apiv2stg.promilo.com/user/oauth/token";

  //*encrypte password

  String encryptPassword(String password) {
    final bytes = utf8.encode(password);
    final hash = sha256.convert(bytes);
    print(hash.toString());
    return hash.toString();
  }

  Future<void> authenticate(String email, String password) async {
    final encryptedPassword = encryptPassword(password);
  }
}




// NOTE: use header 
// Key=Authorization 
// Value=Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==


// username=abc@abc.com&password=6000ac4bc22ce6ea4adcae78b0ff87412d05e4c35912c38a740ff6db659&grant_type=password.