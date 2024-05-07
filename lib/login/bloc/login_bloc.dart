import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:thermocall/login/bloc/login_event.dart';
import 'package:thermocall/login/bloc/login_state.dart';
import 'package:thermocall/login/view/login.dart';
import '../model/user.dart';
import '../model/user_repository.dart';
import 'login_state.dart';
import 'login_event.dart';


class LoginBloc extends Bloc< LoginEvent , LoginState>{
  LoginBloc(this._authenticationRepository, this._userRepository) : super(LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  final AuthenticationRepository _authenticationRepository;
  final UserRepository _userRepository;
  late StreamSubscription<AuthenticationStatus>
  _authenticationStatusSubscription;



  void _onUsernameChanged(
      LoginUsernameChanged event,
      Emitter<LoginState> emit,
      ){}

  void _onPasswordChanged(
      LoginPasswordChanged event,
      Emitter<LoginState> emit,
      ){}

  void _onSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ){}


  @override
  Future<void> close() {
    _authenticationStatusSubscription.cancel();
    return super.close();
  }

  Future<void> _onAuthenticationStatusChanged(
      LoginEvent event,
      Emitter<LoginState> emit,
      ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(const LoginState.);
      case AuthenticationStatus.authenticated:
        final user = await _tryGetUser();
        return emit(
          user != null
              ? AuthenticationState.authenticated(user)
              : const AuthenticationState.unauthenticated(),
        );
      case AuthenticationStatus.unknown:
        return emit(const AuthenticationState.unknown());
    }
  }

  void _onAuthenticationLogoutRequested(
      AuthenticationLogoutRequested event,
      Emitter<AuthenticationState> emit,
      ) {
    _authenticationRepository.logOut();
  }

  Future<User?> _tryGetUser() async {
    try {
      final user = await _userRepository.getUser();
      return user;
    } catch (_) {
      return null;
    }
  }

}