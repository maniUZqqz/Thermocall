import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:thermocall/home/view/home.dart';
import 'package:thermocall/login/bloc/login_bloc.dart';
import 'package:thermocall/login/bloc/login_state.dart';
import 'package:thermocall/login/view/password_input.dart';
import 'package:thermocall/login/view/register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../home/view/home_app.dart';
import 'button.dart';
import 'email_input.dart';


const textColorWhite70 = Colors.white70  ;
const textColorBlack87 = Colors.black87  ;
const textColorBlack54 = Colors.black54  ;

const ColorBlack = Colors.black ;
const ColorWhite = Colors.white ;

double Size16dp = 16.0 ;
double Size32dp = 32.0 ;



class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            EmailInput(),
            PasswordInput(
                textOnTextfield: "Password",
                textInTextfield: " Enter your password"
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: Size16dp,
                  bottom: Size32dp
              ),
              child: Row(
                children: [
                  Text(
                    "Forgot password ?",
                    style: TextStyle(
                        color: Colors.blueAccent
                    ),
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
            ),
            Button(
                textInButton: "Log in",
                textColor: ColorWhite,
                buttonColor: ColorBlack,
                // onTap: (){
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => Home(),
                //       )
                //   );
                // },
                navigator: HomeApp(),
            ),
            Spacer(),
            Center(
              child: Container(
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: textColorBlack54
                  ),
                ),
                padding: EdgeInsets.only(bottom: Size16dp),
              ),
            ),
            Button(
                textInButton: "Register",
                textColor: ColorBlack,
                buttonColor: ColorWhite,
              //   onTap: (){
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => Register(),
              //       )
              //   );
              // },
              navigator: Register(),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding: EdgeInsets.only(
            left: Size16dp,
            right: Size16dp,
            bottom: Size32dp,
            top: 200
        ),
      ),
    );
  }
}
// SingleChildScrollView
