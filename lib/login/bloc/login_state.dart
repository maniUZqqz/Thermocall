import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'dart:async';

final class LoginState extends Equatable {


  const LoginState({
//    this.status = FormzSubmissionStatus.initial,
    this.status = false,
    this.username = "",
    this.password = "",
  });

  // final FormzSubmissionStatus status;
  final bool status;
  final String username;
  final String password;



  @override
  List<Object> get props => [ username, password];
}



enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  final _controller = StreamController<AuthenticationStatus>();

  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }

  Future<void> logIn({
    required String username,
    required String password,
  }) async {
    await Future.delayed(
      const Duration(milliseconds: 300),
          () => _controller.add(AuthenticationStatus.authenticated),
    );
  }

  void logOut() {
    _controller.add(AuthenticationStatus.unauthenticated);
  }

  void dispose() => _controller.close();
}
