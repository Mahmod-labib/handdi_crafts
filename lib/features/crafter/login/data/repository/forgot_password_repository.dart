import '../services/forgot_password_service.dart';

class ForgotPasswordRepository {
  final ForgotPasswordService _forgotPasswordService = ForgotPasswordService();

  Future<void> sendResetCode(String email) async {
    await _forgotPasswordService.sendResetCode(email);
  }

  Future<void> verifyCode(String code) async {
    await _forgotPasswordService.verifyCode(code);
  }

  Future<void> resetPassword(String password, String confirmPassword) async {
    await _forgotPasswordService.resetPassword(password, confirmPassword);
  }
}
