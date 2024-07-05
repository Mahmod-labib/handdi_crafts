import 'package:flutter_application_1/features/customer/signup/data/models/user_model.dart';

import '../services/api_services.dart';

class SignupRepository {
  final SignupApiService _apiService;

  SignupRepository(this._apiService);

  Future<void> signup(SignupModel signupModel) async {
    final data = signupModel.toJson();
    await _apiService.signup(data);
  }
}
class VerifyEmailRepository {
  final VerifyEmailApiService _apiService;

  VerifyEmailRepository(this._apiService);

  Future<void> verifyEmail(VerifyEmailModel verifyEmailModel) async {
    final data = verifyEmailModel.toJson();
    await _apiService.verifyEmail(data);
  }
}