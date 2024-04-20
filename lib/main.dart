import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermocall/home/view/home.dart';
import 'package:thermocall/login/bloc/login_bloc.dart';
import 'package:thermocall/login/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context){
          return LoginBloc();
        },
        child: Login(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
