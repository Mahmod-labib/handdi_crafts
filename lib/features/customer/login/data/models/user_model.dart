class UserModel {
  final String email;
  final String fullName;
  final String accessToken;
  final String refreshToken;

  UserModel({
    required this.email,
    required this.fullName,
    required this.accessToken,
    required this.refreshToken,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      fullName: json['full_name'],
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }
}
class VerifyEmailModel {
  final String code;

  VerifyEmailModel({required this.code});

  Map<String, dynamic> toJson() {
    return {
      'otp': code,
    };
  }
}