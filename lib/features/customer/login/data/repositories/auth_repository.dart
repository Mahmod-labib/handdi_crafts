import '../models/user_model.dart';
import '../services/auth_service.dart';

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
