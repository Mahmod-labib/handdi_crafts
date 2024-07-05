import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ForgotPasswordService {
  final Dio _dio = Dio();
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  Future<void> sendResetCode(String email) async {
    await _dio.post(
      'http://localhost:8000/accounts/password-reset/',
      data: {'email': email},
    );
  }

  Future<void> verifyCode(String code) async {
    final response = await _dio.post(
      'http://localhost:8000/accounts/password-reset-confirm/',
      data: {'code': code},
    );
    final data = response.data;
    await _secureStorage.write(key: 'reset_token', value: data['token']);
    await _secureStorage.write(key: 'uidb64', value: data['uidb64']);
  }

  Future<void> resetPassword(String password, String confirmPassword) async {
    final token = await _secureStorage.read(key: 'reset_token');
    final uidb64 = await _secureStorage.read(key: 'uidb64');
    await _dio.post(
      'http://localhost:8000/accounts/set-new-password/$uidb64/$token/',
      data: {
        'password': password,
        'confirm_password': confirmPassword,
        'uidb64': uidb64,
        'token': token,
      },
    );
  }
}
