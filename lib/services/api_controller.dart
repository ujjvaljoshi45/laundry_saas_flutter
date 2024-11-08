import 'package:laundry_saas_flutter/services/api_contants.dart';
import 'package:laundry_saas_flutter/services/api_handler.dart';

class ApiController {
  static final ApiController _instance = ApiController._();
  factory ApiController() {
    return _instance;
  }
  ApiController._();

  Future signIn(String phone, String password) async {
    final response =
        await ApiManager().post(ApiConstants.signIn, data: {"phone": phone, "password": password});
    return response.data;
  }

  Future signUp() async {
    final response = ApiManager().post(ApiConstants.signUp, data: {});
  }
}
