// auth_bloc.dart

import 'package:flutter_application_1/features/customer/login/bloc/auth/auth_event.dart';
import 'package:flutter_application_1/features/customer/login/bloc/auth/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      try {
        final user = await _authRepository.login(event.email, event.password);
        emit(AuthSuccess(user));
      } catch (e) {
        emit(AuthFailure(e.toString()));
      }
    });

    on<LogoutEvent>((event, emit) async {
      emit(AuthLoading());
      await _authRepository.logout();
      emit(AuthInitial());
    });
  }
}
