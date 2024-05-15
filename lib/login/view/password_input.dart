import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class PasswordInput extends StatefulWidget {
  Function(String) onCheng ;
  String textOnTextfield;
  String textInTextfield;

  PasswordInput({
    required this.textOnTextfield,
    required this.textInTextfield,
    required this.onCheng
  });

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}
class _PasswordInputState extends State<PasswordInput> {

  bool _aneye = true ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                bottom: Size16dp,
                top: Size32dp
            ),
            child: Text(
              widget.textOnTextfield,
              style: TextStyle(
                  color: textColorBlack54
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              widget.onCheng;
            },
            obscureText: _aneye,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText:  widget.textInTextfield,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _aneye ? Icons.visibility_off : Icons.visibility,
                ), onPressed: () {
                setState(){
                  _aneye = !_aneye;
                }
              },
              ),
            ),
          ),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
