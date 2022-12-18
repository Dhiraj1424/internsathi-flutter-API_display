import 'dart:convert';

import 'package:dispaly_app/model/usermodel.dart';
import 'package:http/http.dart' as http;

import '../utils/api_url.dart';

class ApiService {
  Future<List<UserModel>> getUser1() async {
    UserModel userModel;
    List<UserModel> userList = [];
    final response = await http.get(Uri.parse(ApiUrl.userUrl));

    try {
      if (response.statusCode == 200) {
        final user = json.decode(response.body);

        for (var i in user) {
          userModel = UserModel.fromJson(i);
          userList.add(userModel);
        }
        return userList;
      }
    } catch (e) {
      throw e.toString();
    }

    return userList;
  }
}
