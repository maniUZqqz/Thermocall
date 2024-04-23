import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermocall/login/view/password_input.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_state.dart';
import 'button.dart';
import 'email_input.dart';
import 'login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}


class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            EmailInput(),
            PasswordInput(
                textOnTextfield: "Create Password",
                textInTextfield: " Enter your password"
            ),
            PasswordInput(
                textOnTextfield: "Repeat Password",
                textInTextfield: " Repeat your Password "
            ),
            Padding(
                padding: EdgeInsets.only(top: Size32dp)
            ),
            Button(
                textInButton: "Register",
                textColor: ColorWhite,
                buttonColor: ColorBlack,
                onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    )
                );
              },
//               navigator: Login(),
            ),
            Spacer(),
            Center(
              child: Container(
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: textColorBlack54
                  ),
                ),
                padding: EdgeInsets.only(bottom: Size16dp),
              ),
            ),
            Button(
                textInButton: "Log in",
                textColor: ColorBlack,
                buttonColor: ColorWhite,
                onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    )
                );
              },
//                navigator: Login(),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
        padding: EdgeInsets.only(
            left: Size16dp,
            right: Size16dp,
            bottom: Size32dp,
            top: 50,
        ),
      ),
    );
  }
}
