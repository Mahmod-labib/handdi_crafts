import 'package:flutter_application_1/features/customer/signup/data/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

/* class AuthBlocRegister extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBlocRegister(this._authRepository) : super(AuthInitial()) {
    on<SignUpEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        await _authRepository.signUp(event.user);
        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    on<VerifyEmailEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        await _authRepository.verifyEmail(event.code);
        emit(AuthSuccess());
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });
  }
}
*/