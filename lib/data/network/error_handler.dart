import 'package:dio/dio.dart';

class DioClient {
  final Dio _dio;

  DioClient()
      : _dio = Dio(BaseOptions(
    baseUrl: 'https://api.yourservice.com',
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  )) {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // You can add common headers or log the request
        return handler.next(options); // continue
      },
      onResponse: (response, handler) {
        // You can manipulate the response data
        return handler.next(response); // continue
      },
      onError: (DioException e, handler) {
        // Handle errors globally
        final errorMessage = _handleError(e);
        // Optionally, you can show a dialog/toast or log the error
        return handler.next(e); // continue
      },
    ));
  }

  String _handleError(DioException error) {
    String errorDescription = '';

    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = 'Request to API server was cancelled';
        break;
      case DioExceptionType.connectionTimeout:
        errorDescription = 'Connection timeout with API server';
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = 'Receive timeout in connection with API server';
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = 'Send timeout in connection with API server';
        break;
      case DioExceptionType.badResponse:
        if (error.response != null) {
          switch (error.response!.statusCode) {
            case 400:
              errorDescription = 'Bad request';
              break;
            case 401:
              errorDescription = 'Unauthorized';
              break;
            case 403:
              errorDescription = 'Forbidden';
              break;
            case 404:
              errorDescription = 'Not found';
              break;
            case 500:
              errorDescription = 'Internal server error';
              break;
            default:
              errorDescription =
              'Received invalid status code: ${error.response!.statusCode}';
          }
        } else {
          errorDescription = 'Unknown response error';
        }
        break;
      case DioExceptionType.badCertificate:
        errorDescription = 'Bad Certificate';
        break;
      case DioExceptionType.connectionError:
        errorDescription = 'Connection Error';
        break;
      case DioExceptionType.unknown:
        errorDescription = 'Unexpected error occurred';
        break;
    }

    return errorDescription;
  }

  Future<Response> get(String path) async {
    try {
      final response = await _dio.get(path);
      return response;
    } on DioException catch (e) {
      final errorMessage = _handleError(e);
      throw Exception(errorMessage);
    }
  }

  Future<Response> post(String path, {dynamic data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      final errorMessage = _handleError(e);
      throw Exception(errorMessage);
    }
  }

  Future<Response> put(String path, {dynamic data}) async {
    try {
      final response = await _dio.put(path, data: data);
      return response;
    } on DioException catch (e) {
      final errorMessage = _handleError(e);
      throw Exception(errorMessage);
    }
  }

  Future<Response> delete(String path) async {
    try {
      final response = await _dio.delete(path);
      return response;
    } on DioException catch (e) {
      final errorMessage = _handleError(e);
      throw Exception(errorMessage);
    }
  }

  Future<Response> patch(String path, {dynamic data}) async {
    try {
      final response = await _dio.patch(path, data: data);
      return response;
    } on DioException catch (e) {
      final errorMessage = _handleError(e);
      throw Exception(errorMessage);
    }
  }
}
