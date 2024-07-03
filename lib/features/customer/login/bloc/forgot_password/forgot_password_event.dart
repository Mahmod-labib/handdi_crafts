import 'package:equatable/equatable.dart';

abstract class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();

  @override
  List<Object> get props => [];
}

class SendResetCodeEvent extends ForgotPasswordEvent {
  final String email;

  const SendResetCodeEvent(this.email);

  @override
  List<Object> get props => [email];
}

class VerifyCodeEvent extends ForgotPasswordEvent {
  final String code;

  const VerifyCodeEvent(this.code);

  @override
  List<Object> get props => [code];
}

class ResetPasswordEvent extends ForgotPasswordEvent {
  final String password;
  final String confirmPassword;

  const ResetPasswordEvent(this.password, this.confirmPassword);

  @override
  List<Object> get props => [password, confirmPassword];
}
class TextChanged extends ForgotPasswordEvent {
  final String email;

  const TextChanged(this.email);
}