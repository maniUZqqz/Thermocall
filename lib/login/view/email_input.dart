import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thermocall/login/view/register.dart';
import 'login.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({super.key});
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