class SignupModel {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String password2;
  final String phoneNumber;

  SignupModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.password2,
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
      'password2':password2,
      'PhoneNO': phoneNumber,
    };
  }
}
class VerifyEmailModel {
  final String code;

  VerifyEmailModel({required this.code});

  Map<String, dynamic> toJson() {
    return {
      'code': code,
    };
  }
}
