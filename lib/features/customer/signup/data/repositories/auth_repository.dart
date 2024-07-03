

import 'package:flutter_application_1/features/customer/signup/data/models/user_model.dart';
import 'package:flutter_application_1/features/customer/signup/data/services/api_services.dart';

class AuthRepository {
  final ApiService _apiService;

  AuthRepository(this._apiService);

  Future<void> signUp(UserModel user) async {
    await _apiService.signUp(user.toJson());
  }

  Future<void> verifyEmail(String code) async {
    await _apiService.verifyEmail(code);
  }
}
