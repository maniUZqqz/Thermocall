import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

final class LoginState extends Equatable {


  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.username = "",
    this.password = "",
  });

  final FormzSubmissionStatus status;
  final String username;
  final String password;



  @override
  List<Object> get props => [ username, password];
}