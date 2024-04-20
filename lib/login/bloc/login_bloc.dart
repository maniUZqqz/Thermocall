import 'package:bloc/bloc.dart';
import 'package:thermocall/login/bloc/login_event.dart';
import 'package:thermocall/login/bloc/login_state.dart';
import 'package:thermocall/login/view/login.dart';
import 'login_state.dart';
import 'login_event.dart';


class LoginBloc extends Bloc< LoginEvent , LoginState>{
  LoginBloc() : super(LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }


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

}

