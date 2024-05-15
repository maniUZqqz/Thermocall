import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:thermocall/login/bloc/login_event.dart';
import 'package:thermocall/login/bloc/login_state.dart';
import 'package:thermocall/login/view/login.dart';
import '../model/user.dart';
import '../model/user_repository.dart';
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
      ){
      final status = state.status ;
      final username = state.username ;
      final password = state.password ;
      emit(LoginState(
          username: username , password: password ,status: status
      ));
  }

  void _onPasswordChanged(
      LoginPasswordChanged event,
      Emitter<LoginState> emit,
      ){
     emit(LoginState(password: event.password));
  }

  void _onSubmitted(
      LoginSubmitted event,
      Emitter<LoginState> emit,
      ){

    String username = state.username;
    String password = state.password;

    if (username=="mani" && password=="123456"){
        emit(
          LoginState(
//              status: FormzSubmissionStatus.success
              status: true
          )
        );
    }else{
      emit(
          LoginState(
//              status: FormzSubmissionStatus.failure,
              status: false
          )
      );
    }

  }
}