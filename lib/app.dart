import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermocall/home/view/home_app.dart';
import 'package:thermocall/login/bloc/login_bloc.dart';
import 'package:thermocall/login/view/login.dart';

import 'home/view/home.dart';
import 'login/bloc/login_state.dart';
import 'login/data/repository.dart';
import 'login/model/user_repository.dart';
import 'login/view/SplashPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App() ;
  }
}


class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AuthenticationRepository _authenticationRepository;
  late final UserRepository _userRepository;

  @override
  void initState() {
    super.initState();
    _authenticationRepository = AuthenticationRepository();
    _userRepository = UserRepository();
  }

  @override
  void dispose() {
    _authenticationRepository.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RepositoryProvider.value(
          value: _authenticationRepository,
          child: BlocProvider(
            create: (context){
              return LoginBloc();
            },
            child: const AppView(),
          ),

      ),
      debugShowCheckedModeBanner: false,
    );
  }
}



class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      builder: (context, child) {
        return BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushAndRemoveUntil<void>(
                  Home.route(),
                      (route) => false,
                );
              case AuthenticationStatus.unauthenticated:
                _navigator.pushAndRemoveUntil<void>(
                  Login.route(),
                      (route) => false,
                );
              case AuthenticationStatus.unknown:
                break;
            }
          },
          child: child,
        );
      },
      onGenerateRoute: (_) => SplashPage.route(),
    );
  }
}
