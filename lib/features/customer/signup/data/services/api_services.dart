import 'package:dio/dio.dart';

class SignupApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8000/'));

  Future<Response> signup(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('accounts/register_customer/', data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('Failed to signup: ${e.response?.data ?? e.message}');
    }
  }
}

class VerifyEmailApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:8000/'));

  Future<Response> verifyEmail(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('accounts/verify_email/', data: data);
      return response;
    } on DioException catch (e) {
      throw Exception('Failed to verify email: ${e.response?.data ?? e.message}');
    }
  }
}
