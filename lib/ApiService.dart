import 'dart:convert';

import 'package:aaa/model/MainResp.dart';
import 'package:http/http.dart' as http;
class ApiService {
  Future<List<MainResp>> Fetch() async {
    print("called");
    var response = await http.get(Uri.parse("http://leafbazar.org/wp-json/wp/v2/media"));
    print("res::::::${response.body}");
    var jsonn = jsonDecode(response.body) as List;
    var list = jsonn.map((map) {
      return MainResp.fromJson(map);
    }).toList();

    return list;
  }
}