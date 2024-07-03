import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8000'));

  Future<Response> signUp(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('/accounts/register_customer', data: data);
      return response;
    } on DioError catch (e) {
      throw Exception('Failed to sign up: $e');
    }
  }

  Future<Response> verifyEmail(String code) async {
    try {
      final response = await _dio.post('/accounts/verify_email', data: {'code': code});
      return response;
    } on DioError catch (e) {
      throw Exception('Failed to verify email: $e');
    }
  }
}
