import 'package:equatable/equatable.dart';
import 'package:flutter_application_1/features/customer/signup/data/models/user_model.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignUpEvent extends AuthEvent {
  final UserModel user;

  SignUpEvent(this.user);

  @override
  List<Object> get props => [user];
}

class VerifyEmailEvent extends AuthEvent {
  final String code;

  VerifyEmailEvent(this.code);

  @override
  List<Object> get props => [code];
}
