
import 'package:flutter_application_1/features/crafter/login/data/models/crafter_model.dart';
import 'package:flutter_application_1/features/crafter/login/data/services/api_services.dart';

class AuthRepository {
  final AuthService _authService = AuthService();

  Future<UserModel> login(String email, String password) async {
    final data = await _authService.login(email, password);
    return UserModel.fromJson(data);
  }

  Future<String?> getAccessToken() async {
    return await _authService.getAccessToken();
  }

  Future<void> logout() async {
    await _authService.deleteTokens();
  }
}
