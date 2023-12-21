import 'dart:convert';
import 'data_models/login_model.dart';
import 'package:http/http.dart';

class ApiCall {
  Future<LoginModel?> apiCall(email, password) async {
    const String url = "http://35.154.179.227:2911/Vivyacrm_app/logging/login_view/";
    final Map<String, String> requestBody = {
      'user_email': email,
      'password': password,
    };

    print(requestBody);

    String encodedBody = jsonEncode(requestBody);


    try {
      Response response = await post(
        Uri.parse(url),
        body: encodedBody,
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        print(json);
        var result = LoginModel.fromMap(json);
        return result;
      // } else {
      //   print('Request failed with status: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }
}
