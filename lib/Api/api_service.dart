import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:instagram/Api/Api_user.dart';

class Api_service{
 static Future<ApiUser> fetchUsers() async{
  final response =await http.get(Uri.parse('https://randomuser.me/api/?results=100'));
  if (response.statusCode == 200) {
    final Map<String, dynamic> data = jsonDecode(response.body);
      return ApiUser.fromMap(data);
      //  List<dynamic> responsedata = jsonDecode(response.
      // );
      //  return responsedata.map((e) => DataModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to fetch data');
    }
 }
}