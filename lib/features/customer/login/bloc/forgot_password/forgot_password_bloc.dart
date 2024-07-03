import 'package:flutter_application_1/features/customer/login/data/repositories/forgot_password_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'forgot_password_event.dart';
import 'forgot_password_state.dart';

class ForgotPasswordBloc extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  final ForgotPasswordRepository _forgotPasswordRepository;

  ForgotPasswordBloc(this._forgotPasswordRepository) : super(ForgotPasswordInitial()) {
    on<SendResetCodeEvent>((event, emit) async {
      emit(ForgotPasswordLoading());
      try {
        await _forgotPasswordRepository.sendResetCode(event.email);
        emit(ForgotPasswordSuccess());
      } catch (e) {
        emit(ForgotPasswordFailure(e.toString()));
      }
    });

    on<VerifyCodeEvent>((event, emit) async {
      emit(ForgotPasswordLoading());
      try {
        await _forgotPasswordRepository.verifyCode(event.code);
        emit(ForgotPasswordSuccess());
      } catch (e) {
        emit(ForgotPasswordFailure(e.toString()));
      }
    });

    on<ResetPasswordEvent>((event, emit) async {
      emit(ForgotPasswordLoading());
      try {
        await _forgotPasswordRepository.resetPassword(event.password, event.confirmPassword);
        emit(ForgotPasswordSuccess());
      } catch (e) {
        emit(ForgotPasswordFailure(e.toString()));
      }
    });
  }
}
class TextBloc extends Bloc<ForgotPasswordEvent, TextState> {
  TextBloc() : super(TextState(''));

  Stream<TextState> mapEventToState(ForgotPasswordEvent event) async* {
    if (event is TextChanged) {
      yield TextState(event.email);
    }
  }
}