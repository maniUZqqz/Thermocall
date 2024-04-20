import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Button extends StatefulWidget {

  String textInButton ;
  Color  textColor ;
  Widget navigator ;
  Color buttonColor ;

  Button({super.key,
    required this.textInButton,
    required this.textColor,
    required this.navigator,
    required this.buttonColor,
  });

  @override
  State<Button> createState() => _ButtonState();
}
class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: widget.buttonColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: ColorBlack,
                width: 2
            )
        ),
        width: double.infinity,
        padding: EdgeInsets.only(
            top: Size16dp,
            bottom: Size16dp
        ),
        child: Center(
          child: InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: widget.buttonColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child:Text(
                widget.textInButton,
                style: TextStyle(
                    color: widget.textColor
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => widget.navigator
                  )
              );
            },
          ),
        )
    );
  }
}
