import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:maps_me/model/usermodel.dart';

class Api {
  Future<List<User>> getDetails() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      List<dynamic> userList = jsonDecode(response.body);
      List<User> users =
          userList.map((userJson) => User.fromJson(userJson)).toList();
      return users;
    } else {
      throw Exception('Failed to fetch user data');
    }
  }
}
