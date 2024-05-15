import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thermocall/login/bloc/login_bloc.dart';
import 'package:thermocall/login/bloc/login_event.dart';
import 'package:thermocall/login/view/register.dart';
import 'login.dart';

class EmailInput extends StatefulWidget {
  Function(String) onCheng ;
  EmailInput({super.key,required this.onCheng});

  @override
  State<EmailInput> createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                bottom: Size16dp
            ),
            child: Text(
              "Email",
              style: TextStyle(
                  color: textColorBlack54
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              widget.onCheng;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: " Enter your email ",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    ) ;
  }
}