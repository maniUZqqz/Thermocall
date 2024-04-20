import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      style: ElevatedButton.styleFrom(
//        backgroundColor: Color(0x002039),
        backgroundColor: Colors.blue,
        shape: CircleBorder(),
      ),
      onPressed: () {

      },
    );
  }
}
